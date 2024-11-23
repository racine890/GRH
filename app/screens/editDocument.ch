Background: app/res/bgform.png

Text.nb: 4

Text1: Enter type of document
Text1.id: 0
0.x: 100
0.y: 125

Text2: Select the path
Text2.id: 1
1.x: 100
1.y: 240

Text3: Select owner 
Text3.id: 6
6.x: 100
6.y: 170

Text4: The document to edit
Text4.id: 7
7.x: 100
7.y: 40

Buttons.nb: 4
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/document-screen.ch
2.x: 120
2.y: 330

Button2: update
Button2.id: 3
3.link: app/scripts/editDocument/update.gcs
3.x: 280
3.y: 330

Button3: document path
Button3.id: 5
5.link: app/scripts/document/openfile.gcs
5.x: 200
5.y: 250

Button4: Delete
Button4.id: 8
8.link: app/scripts/editDocument/delete.gcs
8.x: 400
8.y: 50

Input.nb: 1
Input.Background: #ADD2CA
entry.width: 200

Input1.id: 4
4.x: 200
4.y: 150

[events]
Button-1: app/scripts/editDocument/select.gcs
Key: @[end]
BackSpace: app/screens/document-screen.ch
Return: app/scripts/editDocument/update.gcs
[/events]

OnDisplay: app/scripts/editDocument/listBox-worker.gcs