Background: app/res/bgform.png
Text.nb: 2
Text1: Select file 
Text1.id: 0
0.x: 200
0.y: 100

Buttons.nb: 5
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-screen.ch
2.x: 150
2.y: 350

Button2: create new folder
Button2.id: 3
#3.link: app/scripts/post/save-workerPost.gcs
3.x: 320
3.y: 350



input.nb: 1
input.Background: #ADD2CA
entry.width: 200
Input1: 
Input1.id: 4
4.x: 200
4.y: 150

Button3: create new folder
Button3.id: 5
#5.link: app/scripts/post/save-workerPost.gcs
5.x: 50
5.y: 450

Button4: create new folder
Button4.id: 6
#6.link: app/scripts/post/save-workerPost.gcs
6.x: 200
6.y: 450


Button5: create new folder
Button5.id: 7
#7.link: app/scripts/post/save-workerPost.gcs
7.x: 350
7.y: 450

[events]
Key: app/scripts/folder/search-folder.gcs
[/events]

OnDisplay: app/scripts/folder/listBoxWorkerFolder.gcs