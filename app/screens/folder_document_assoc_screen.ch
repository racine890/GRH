Background: app/res/bgform.png
Text.nb: 2
Text1: Select document
Text1.id: 0
0.x: 200
0.y: 150

Text2: Select folder
Text2.id: 1
1.x: 200
1.y: 250

Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 2
2.link: app/screens/folder-screen.ch
2.x: 120
2.y: 330

Button2: Save
Button2.id: 3
3.link:app/scripts/folder-document/saveFolderDocument.gcs
3.x: 300
3.y: 330


[events]
Key: @[end]
[/events]

OnDisplay: app/scripts/folder-document/listBoxFolderDocument.gcs