# This is the userModule, both for library import and custom classes definition
# librairie python que l'on importe ici
import bcrypt

#bibliotheque pour copier les fichier et.... 
import shutil
import platform
import os
from datetime import datetime
try:
	from sys import path
	# On ajoute le dossier module au path pour pouvoir importer ce qui s'y trouve comme si c'était à la racine
	path.append("./modules")
	# Tkintertable pour gérer les tableaux
	import tkintertable
except ImportError as e:
	print("*** Error : Could not find tkinterTable")
	pass


#bcrypt permet de generer du sel(des caractere)
make_salt = lambda : bcrypt.gensalt()

#hasher le mot de passe
crypt_pass = lambda passw, salt : bcrypt.hashpw(passw.encode('utf-8'), salt)

# Pour vérifier si la date saisie est correcte
dateCheck = lambda strdate : ( strdate.replace('/', '').isdigit() and len(strdate) == 10 )

# Pour transformer la date saisie en date traitable
formatDate = lambda strdate : '-'.join(strdate.split('/')[::-1])

# Pour transformer la date traitable en date lisible
unFormatDate = lambda dbDate : '/'.join(dbDate.split('-')[::-1]) if not ' ' in dbDate else unFormatDate(dbDate.split(' ')[0])+' '+dbDate.split(' ')[1]

# Récupère la date d'aujourd'hui
get_today = lambda : datetime.today().strftime('%Y-%m-%d')

# Checks if the required right exists in session_rights
hasRight = lambda rightName, session_rights : rightName in (right[1] for right in session_rights)

def isHigherVersion(current, other):
	cn = current.split(".")
	on = other.split(".")
	for i in range(4):
		if on[i] == cn[i]:
			pass
		else:
			return int(on[i]) > int(cn[i])
	return False

# Get the migration files
def migrate(currentVersion, dbObject):
	isPerfect = True
	availables = os.listdir("./migrations")
	if len(availables) == 0:
		return isPerfect

	logs = "Started migrations ...\n\n"
	
	for migration in availables:
		migration_code = migration[:migration.rindex('.')]
		if isHigherVersion(currentVersion, migration_code):
			logs+="\nPerforming migration : "+migration_code+"\n"

			mf = open("./migrations/"+migration, 'r')
			queries = mf.readlines()
			mf.close

			for query in queries:
				if query.strip() != '' and not query.strip().startswith('--'):
					try:
						dbObject.cursor.execute(query)
						logs+="\tSuccessfully executed : "+query+"\n"
						dbObject.cursor.execute("commit;")
					except Exception as e:
						logs+="\tAn error occured : "+str(e)+"\n"
						isPerfect = False
			dbObject.cursor.execute("update grh_config set config_value = %s where config_name = 'db_version'", (migration_code,))
	
	logs_file = open("migrations.log.txt", "w")
	logs_file.write(logs)
	logs_file.close()

	return isPerfect

def getWidgetById(widgets, _id):
	for w in widgets:
		if w[0] == _id:
			return w[1]

def getConfig(configName, configList):
	for config in configList:
		if config[1] == configName:
			return config[2]

# Fusionne des listes comme [[1,2], ["un", "deux"]] pour donner un truc comme [[1, "un"],[2, "deux"]]
# Continue jusqu'au nombre d'éléments de la première sous liste
def merge_lists(listOfLists: list) -> list:
	newList = []
	ref = listOfLists[0]

	while len(ref) != 0:
		tmpList = []
		for l in listOfLists:
			tmpList.append(l.pop(0) if l!=[] else "")
		newList.append(tmpList)

	return newList

# Le dossier d'installation du logiciel en cas de déploiement binaire
if platform.system() =='Linux':
	basepath= os.path.expanduser("~")+"/.gc_programms/tk/grh/"
else:
	basepath="C:/GC_PROGRAMMS/tk/grh/"

prepareData = lambda List : [{"title": '', "icon": e[2] , "description": e[1][:7], "action": '@[SetVar *selected '+ str(e[0])+','+str(e[2]) +']'} for e in List ]

def weekdayFromDate(dateStr):
	dateStr = formatDate(dateStr) if not ' ' in dateStr else formatDate(dateStr.split(' ')[0])
	date_obj = datetime.strptime(dateStr, "%Y-%m-%d")
	jour_semaine = date_obj.strftime("%A")
	return jour_semaine

def compare_dates(date1_str, date2_str, format_date='%Y-%m-%d'):
    date1 = datetime.strptime(date1_str, format_date)
    date2 = datetime.strptime(date2_str, format_date)
    
    if date1 > date2:
        return 2
    elif date1 < date2:
        return 1
    else:
        return 0

def hours_diff(date, hour, isMorning=True):
	dateHour = formatDate(date.split(' ')[0])
	hours = date.split(' ')[1]

	complateHour = dateHour+' '+hour+':00'
	original = dateHour+' '+hours
	factor = '+'

	comparison = compare_dates(original, complateHour, "%Y-%m-%d %H:%M:%S")
	if(comparison == 2):
		if isMorning:
			factor = '-'
		return factor, dates_diff(original, complateHour)
	else:
		if not isMorning:
			factor = '-'
		return factor, dates_diff(complateHour, original)

def getDelay(rows, configs):
	mon_mor = getConfig('mon_mor', configs)
	mon_eve = getConfig('mon_eve', configs)
	tue_mor = getConfig('tue_mor', configs)
	tue_eve = getConfig('tue_eve', configs)
	wed_mor = getConfig('wed_mor', configs)
	wed_eve = getConfig('wed_eve', configs)	
	thu_mor = getConfig('thu_mor', configs)
	thu_eve = getConfig('thu_eve', configs)	
	fri_mor = getConfig('fri_mor', configs)
	fri_eve = getConfig('fri_eve', configs)	
	sat_mor = getConfig('sat_mor', configs)
	sat_eve = getConfig('sat_eve', configs)
	sun_mor = getConfig('sun_mor', configs)
	sun_eve = getConfig('sun_eve', configs)
	allDays = {
		"Monday" : (mon_mor, mon_eve),
		"Tuesday" : (tue_mor, tue_eve),
		"Wednesday" : (wed_mor, wed_eve),
		"Thursday" : (thu_mor, thu_eve),
		"Friday" : (fri_mor, fri_eve),
		"Saturday" : (sat_mor, sat_eve),
		"Sunday" : (sun_mor, sun_eve)
	}

	result = []
	for row in rows:
		newRow = list(row)
		mor = row[3]
		eve = row[4]

		dfactor, delay = hours_diff(mor, allDays[weekdayFromDate(mor)][0])
		ofactor, overtime = hours_diff(eve, allDays[weekdayFromDate(eve)][1], False)

		newRow+=[dfactor+ str(delay[0])+'h : '+str(delay[1])+' min']
		newRow+=[ofactor+ str(overtime[0])+'h : '+str(overtime[1])+' min']

		dsign = 1 if dfactor == '+' else -1
		osign = 1 if ofactor == '+' else -1
		total = addHours(delay, overtime, dsign, osign)

		newRow+=[total[0]+str(total[1])+'h : '+str(total[2])+'min']
		result.append(newRow)
	
	return result

def dates_diff(date1_str, date2_str):
	tpl1 = date1_str.split(' ')[1][:5].split(':')
	h1, m1 = int(tpl1[0]), int(tpl1[1])
	tpl2 = date2_str.split(' ')[1][:5].split(':')
	h2, m2 = int(tpl2[0]), int(tpl2[1])

	diff_heures = 0
	diff_minutes = 0
	if h1 > h2:
		m1 = abs(h1-h2)*60 + m1
		diff_minutes = m1-m2
	else:
		m2 = abs(h1-h2)*60 + m2
		diff_minutes = m2-m1
	
	while diff_minutes >= 60:
		diff_heures += 1
		diff_minutes -= 60

	return (abs(diff_heures), abs(diff_minutes))

def addHours(d, o, sd, so):
	mt = sd*(60*d[0]+d[1]) + so*(60*o[0]+o[1])
	
	rsign = '-'
	if mt > 0:
		rsign = '+'
	
	mt = abs(mt)

	ht = 0
	while mt >= 60:
		ht += 1
		mt -= 60
	return (rsign, ht,mt)