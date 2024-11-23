#
#	configscreen
# 	tache: formulaire qui prend les information de la base de donnee
# 	nom de la base, l'utilisateur mysql(root), le mot de passe(), ladresse ip de la base(le localhost)
#

OnDisplay: app/scripts/configscreen/translate.gcs

Buttons.nb: 2
Button.size: 50
Button.width: 150
Button.Background: #55968F
Button.Foreground: #FFFFFF

Button1: save
Button1.id: 0
0.x: 200
0.y: 300
0.link: app/scripts/licence/checkconfig_save_database.gcs

Button2: Turn back
Button2.id: 1
1.x: 450
1.y:300 
1.link: home.ch

input.nb: 4
input.Background: #ADD2CA
Input1: 
Input1.id: 2
2.x: 450
2.y: 50

Input2: 
Input2.id: 3
3.x: 450
3.y: 100

Input3: 
Input3.id: 4
4.x: 450
4.y: 150

Input4: 
Input4.id: 5
5.x: 450
5.y: 200

Text.nb: 4
Text1: Database name:
Text1.id: 6
6.x: 300
6.y: 30

Text2: User:
Text2.id: 7
7.x: 300
7.y: 80

Text3: Password:
Text3.id: 8
8.x: 300
8.y: 130

Text4:  Ip adresse:
Text4.id: 9
9.x: 300
9.y: 180

Background: app/res/plum.png

[events]
Key: @[end]
Button-1: @[end]
Return: @[end]
BackSpace: @[end]
[/events]
# END