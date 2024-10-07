# This is the userModule, both for library import and custom classes definition
# librairie python que l'on importe ici
import bcrypt

#bibliotheque pour copier les fichier et.... 
import shutil
import platform
import os
from datetime import datetime
#from modules import tkintertable


#bcrypt permet de generer du sel(des caractere)
make_salt = lambda : bcrypt.gensalt()

#hasher le mot de passe
crypt_pass = lambda passw, salt : bcrypt.hashpw(passw.encode('utf-8'), salt)

# Pour vérifier si la date saisie est correcte
dateCheck = lambda strdate : ( strdate.replace('/', '').isdigit() and len(strdate) == 10 )

# Pour transformer la date saisie en date traitable
formatDate = lambda strdate : '-'.join(strdate.split('/')[::-1])

# Pour transformer la date traitable en date lisible
unFormatDate = lambda dbDate : '/'.join(dbDate.split('-')[::-1])

get_today = lambda : datetime.today().strftime('%Y-%m-%d')

def merge_lists(listOfLists):
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

