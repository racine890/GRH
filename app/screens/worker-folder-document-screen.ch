#
#	Worker-Folder-Document-Screen.ch
#		Ecran listant les dossiers et permettant de les traiter
#

Background: app/res/bgform.png

Text.nb: 2
Text1: Select file 
Text1.id: 0
0.x: 200
0.y: 100

Buttons.nb: 4

Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-screen.ch
2.x: 120
2.y: 280

Button2: create folder
Button2.id: 3
3.link: app/screens/folder-screen.ch
3.x: 120
3.y: 330

Button3: create document
Button3.id: 5
5.link: app/screens/document-screen.ch
5.x: 120
5.y: 380

Button4: Post up
Button4.id: 6
6.link: app/scripts/worker-folder-document-screen/displayFolder.gcs
6.x: 120
6.y: 430

Input.nb: 1

Input.Background: #ADD2CA
Entry.width: 200

Input1.id: 4
4.x: 200
4.y: 150

[events]
Key: app/scripts/folder/search-folder.gcs
[/events]

OnDisplay: app/scripts/folder/listBoxWorkerFolder.gcs