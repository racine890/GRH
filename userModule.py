# This is the userModule, both for library import and custom classes definition
# librairie python que l'on importe ici
import bcrypt
#bcrypt permet de generer du sel(des caractere)
make_salt = lambda : bcrypt.gensalt()
#hasher le mot de passe
crypt_pass = lambda passw, salt : bcrypt.hashpw(passw.encode('utf-8'), salt)