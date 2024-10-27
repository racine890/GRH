Background: app/res/bgform.png
Text.nb: 4
Text1: Select worker
Text1.id: 0
0.x: 200
0.y: 50

Text2: Select event
Text2.id: 1
1.x: 200
1.y: 100

Text3: Enter the end of the event
Text3.id: 3
3.x: 200
3.y: 200


Text4: justify
Text4.id: 4
4.x: 200
4.y: 250

Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Turn back
Button1.id: 5
5.link: app/screens/event.ch
5.x: 150
5.y: 350

Button2: Save
Button2.id: 6
6.link: app/scripts/event/save-workerEvent.gcs
6.x: 320
6.y: 350


edit.nb: 1
edit.Background: #ADD2CA

edit1.id: 8
8.x: 350
8.y: 300
8.type: date
8.w: 150
8.h: 50

Input.nb: 1
Input.Background: #ADD2CA

Input1.id: 7
7.x: 270
7.y: 220
7.type:date


OnDisplay: app/scripts/event/listBoxWorkerEvent.gcs