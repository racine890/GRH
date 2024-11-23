Background: app/res/bgform.png
Text.nb: 1
Text1: Select Event to start
Text1.id: 0
0.x: 200
0.y: 50

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

Button2: start
Button2.id: 6
6.link: app/scripts/event/update-Event.gcs
6.x: 320
6.y: 350

OnDisplay: app/scripts/event/listBoxEvent.gcs

[events]
Key: @[end]
Button-1: @[end]
BackSpace: @[end]
Return: @[end]
[/events]
