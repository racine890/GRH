Background: app/res/bgform.png
Text.nb: 2
Text1: Select file 
Text1.id: 0
0.x: 200
0.y: 100

Buttons.nb: 4
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-screen.ch
2.x: 120
2.y: 280

Button2: create folder
Button2.id: 3
#3.link: app/scripts/post/save-workerPost.gcs
3.x: 280
3.y: 280



input.nb: 1
input.Background: #ADD2CA
entry.width: 200
Input1: 
Input1.id: 4
4.x: 200
4.y: 150

Button3: create document
Button3.id: 5
5.link: app/screens/document-screen.ch
5.x: 80
5.y: 350

Button4: Post up
Button4.id: 6
#6.link: app/scripts/post/save-workerPost.gcs
6.x: 320
6.y: 350




[events]
Key: app/scripts/folder/search-folder.gcs
[/events]

OnDisplay: app/scripts/folder/listBoxWorkerFolder.gcs