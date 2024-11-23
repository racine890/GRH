#
#	Worker-Screen.ch
#		Ecran formulaire de création d'un travailleur
#

Background: app/res/bgform.png
OnDisplay: app/scripts/event/translate.gcs

Text.nb: 2
Text1: Enter the title of event
Text1.id: 0
0.x: 100
0.y: 60

Text2: Enter foresight date
Text2.id: 1
1.x: 100
1.y: 150

Buttons.nb: 4
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/main.ch
2.x: 100
2.y: 380

Button2: Save
Button2.id:3
3.x: 300
3.y: 380
3.link: app/scripts/event/save.gcs

Button3: Attribuate event
Button3.id: 6
6.x: 550
6.y: 5
6.link: app/screens/worker-event-assoc.ch

Button4: Start event
Button4.id: 7
7.link: app/screens/start-event.ch
7.x: 500
7.y: 380

Input.nb: 2
Input.Background: #ADD2CA

Input1.id: 4
4.x: 250
4.y: 85

Input2.id: 5
5.x: 250
5.y: 180
5.type: date

[events]
Button-1: @[end]
Key: @[end]
BackSpace: app/screens/main.ch
Return: app/scripts/event/save.gcs
[/events]