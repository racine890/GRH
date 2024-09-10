Background: app/res/bgpost.png
Text.nb: 3
Text1: Title of folder
Text1.id: 0
0.x: 200
0.y: 50

Text2: Created the ../../
Text2.id: 1
1.x: 220
1.y: 100


Text3: Proprietor ......
Text3.id: 10
10.x: 130
10.y: 300


Buttons.nb: 8
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-folder-document-screen.ch
2.x: 560
2.y: 450

Button2: Post
Button2.id: 3
#3.link:app/scripts/folder-document/saveFolderDocument.gcs
3.x: 560
3.y: 0

Button3: Transfer
Button3.id: 4
#4.link:app/scripts/folder-document/saveFolderDocument.gcs
4.x: 560
4.y: 70

Button4: ......
Button4.id: 5
#5.link:app/scripts/folder-document/saveFolderDocument.gcs
5.x: 560
5.y: 130

Button5: Validate
Button5.id: 6
#6.link:app/scripts/folder-document/saveFolderDocument.gcs
6.x: 560
6.y: 200

Button6: .....
Button6.id: 7
#7.link:app/scripts/folder-document/saveFolderDocument.gcs
7.x: 560
7.y: 260

Button7: Add
Button7.id: 8
#8.link:app/scripts/folder-document/saveFolderDocument.gcs
8.x: 560
8.y: 320

Button8: Print
Button8.id: 9
#9.link:app/scripts/folder-document/saveFolderDocument.gcs
9.x: 560
9.y: 380


Edit.Background: #ADD2CA
Edit.width:300
Edit.size:100
Edit.BeginX: 200
Edit.BeginY: 200


[events]
Key: @[end]
[/events]

#OnDisplay: app/scripts/folder-document/listBoxFolderDocument.gcs