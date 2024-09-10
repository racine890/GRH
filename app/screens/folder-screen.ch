Background: app/res/bgform.png
Text.nb: 3
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



Buttons.nb: 3
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 3
3.link: app/screens/worker-folder-document-screen.ch
3.x: 100
3.y: 400

Button2: Save
Button2.id:4
4.x: 250
4.y: 400
4.link:app/scripts/folder/save-folder.gcs

Button3: Choose document
Button3.id: 5
5.link: app/screens/folder_document_assoc_screen.ch
5.x: 550
5.y: 2

input.nb: 2
input.Background: #ADD2CA
Input1: 
Input1.id: 6
6.x: 250
6.y: 180

Input2: 
Input2.id: 7
7.x: 250
7.y: 240


[events]
Button-1: @[end]
[/events]

OnDisplay: app/scripts/folder/listBoxWorker.gcs
