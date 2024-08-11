Background: app/res/bgform.png
Text.nb: 2
Text1: Select worker
Text1.id: 0
0.x: 200
0.y: 150

Text2: Select post
Text2.id: 1
1.x: 200
1.y: 250

Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Return
Button1.id: 2
2.link: app/screens/post.ch
2.x: 150
2.y: 350

Button2: Save
Button2.id: 3
3.link: app/scripts/post/save-workerPost.gcs
3.x: 320
3.y: 350

OnDisplay: app/scripts/post/listBoxWorkerPost.gcs