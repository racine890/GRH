# This is the userModule, both for library import and custom classes definition
# librairie python que l'on importe ici
import bcrypt
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
