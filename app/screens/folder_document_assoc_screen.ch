Background: app/res/bgform.png
Text.nb: 2
Text1: Select document
Text1.id: 0
0.x: 200
0.y: 100

Text2: Select folder
Text2.id: 1
1.x: 50
1.y: 100

Buttons.nb: 3
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 2
2.link: app/screens/worker-folder-document-screen.ch
2.x: 120
2.y: 280

Button2: Save
Button2.id: 3
#3.link:
3.x: 280
3.y: 280


[events]
Key: @[end]
[/events]

OnDisplay: app/scripts/document/listBox-worker.gcs