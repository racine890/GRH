#
#	DocumentScreen.ch
#		Formulaire de document
#

Background: app/res/bgform.png
Text.nb: 3

Text1: Enter type of document
Text1.id: 0
0.x: 100
0.y: 125

Text2: Select the path
Text2.id: 1
1.x: 100
1.y: 240

Buttons.nb: 4
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-folder-document-screen.ch
2.x: 120
2.y: 330

Button2: Save
Button2.id: 3
3.link: app/scripts/document/save-file.gcs
3.x: 280
3.y: 330

Input.nb: 1
Input.Background: #ADD2CA
entry.width: 200

Input1.id: 4
4.x: 200
4.y: 150

Button3: document path
Button3.id: 5
5.link: app/scripts/document/openfile.gcs
5.x: 200
5.y: 250

Button4: Edit
Button4.id: 7
7.link: app/screens/editDocument.ch
7.x: 500
7.y: 50

Text3: Select owner 
Text3.id: 6
6.x: 100
6.y: 170

[events]
Key: @[end]
Button-1: @[end]
Return: app/scripts/document/save-file.gcs
BackSpace: app/screens/worker-folder-document-screen.ch
[/events]

OnDisplay: app/scripts/document/listBox-worker.gcs