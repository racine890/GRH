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




def comparer_dates(date1_str, date2_str, format_date='%Y-%m-%d'):
    # Conversion des chaînes de caractères en objets datetime
    date1 = datetime.strptime(date1_str, format_date)
    date2 = datetime.strptime(date2_str, format_date)
    
    # Comparaison des dates
    if date1 > date2:
        return 2
    elif date1 < date2:
        return 1
    else:
        return 0

