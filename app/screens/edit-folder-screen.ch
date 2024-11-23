#
# Edition de dossier
#

Background: app/res/bgform.png

OnDisplay: app/scripts/folder/listBoxWorker.gcs

Text.nb: 4
Text1: Label of folder
Text1.id: 0
0.x: 100
0.y: 160

Text2: Description
Text2.id: 1
1.x: 100
1.y: 220

Text3: select worker
Text3.id: 2
2.x: 100
2.y: 280

Text4: EDIT-FOLDER
Text4.id: 7
7.x: 100
7.y: 100

Buttons.nb: 2

Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

#Ici le bouton Turn-back renvoie sur le fichier consult-folder
Button1: Turn back
Button1.id: 3
3.link: app/screens/consult-folder.ch
3.x: 100
3.y: 400

Button2: Update
Button2.id:4
4.x: 270
4.y: 400
4.link: app/scripts/folder/update.gcs

Input.nb: 1

Input.Background: #ADD2CA

Input1.id: 6
6.x: 250
6.y: 180

Edit.BeginX: 270
Edit.BeginY: 200
Edit.width: 200
Edit.size: 50
Edit.id: 8

[events]
Button-1: @[end]
Key: @[end]
Return: app/scripts/folder/update.gcs
BackSpace: app/screens/consult-folder.ch
[/events]
