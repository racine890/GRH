#
#	Badge-Screen.ch
#		Ecran formulaire de création d'un badge
#

OnDisplay: app/scripts/badge-screen/translate.gcs

Background: app/res/bgform.png

Buttons.nb: 3

Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/main.ch
2.x: 100
2.y: 380

Button2: Attribute badge
Button2.id: 4
4.link: app/screens/worker-badge-screen.ch
4.x: 550
4.y: 2

Button3: Edit
Button3.id: 6
6.link: app/screens/edit-badge.ch
6.x: 550
6.y: 80

Button4: Print summary
Button4.id: 0
0.link: app/screens/edit-badge.ch
0.x: 550
0.y: 45

[events]
Button-1: @[end]
Key: @[end]
[/events]