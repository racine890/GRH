#
#	clocking
#		Pointage des heures d'arrivée et de départ
#

Background: app/res/bgform.png
Text.nb: 2
Text1: From
Text1.id: 0
0.x: 50
0.y: 10

Text2: To
Text2.id: 1
1.x: 50
1.y: 50

Input.nb: 2
Input1.id: 4
4.x: 250
4.y: 20
4.type: date

Input2.id: 5
5.x: 250
5.y: 70
5.type: date

Buttons.nb: 2

Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/states.ch
2.x: 120
2.y: 400

Button2: Print
Button2.id: 3
3.link: app/scripts/states/clocking.gcs
3.x: 270
3.y: 400

[events]
Key: @[end]
Button-1: @[end]
[/events]
