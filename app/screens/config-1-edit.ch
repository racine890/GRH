#
#	config-1
#		Paramétrages globaux
#

Background: app/res/bgcongig1.png

Text.nb: 2

Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 8
8.link: app/screens/config-1.ch
8.x: 20
8.y: 250

Button2: Update
Button2.id: 9
9.link: app/scripts/config-1-edit/update.gcs
9.x: 360
9.y: 400

Text1: Choose a woker
Text1.id: 10
10.x: 250
10.y: 300

Text2: Choose the right
Text2.id: 2
2.x: 250
2.y: 230

OnDisplay: app/scripts/config-1-edit/preload.gcs

[events]
Key: @[end]
Button-1: @[print var LASTCLICKEDID]
BackSpace: @[end]
Return: @[end]
[/events]
