#
#	Folder_Document_Assoc_Screen
#		Définir les pièces d'un dossier
#

Background: app/res/bgform.png
Text.nb: 2
Text1: Select document
Text1.id: 0
0.x: 200
0.y: 150

Text2: Choosen documents
Text2.id: 1
1.x: 200
1.y: 250

Buttons.nb: 3

Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/consult-folder.ch
2.x: 120
2.y: 330

Button2: Select
Button2.id: 3
3.link: app/scripts/folder-document/addToSelection.gcs
3.x: 270
3.y: 330

Button3: Set Documents
Button3.id: 4
4.link: app/scripts/folder-document/saveFolderDocument.gcs
4.x: 420
4.y: 330

[events]
Key: @[end]
Button-1: @[end]
[/events]

OnDisplay: app/scripts/folder-document/listBoxFolderDocument.gcs