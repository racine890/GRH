#
#	Badge-Screen.ch
#		Ecran formulaire de création d'un badge
#

Background: app/res/bgform.png

Text.nb: 2
Text1: Enter Description
Text1.id: 0
0.x: 100
0.y: 200

Text2: Select icon of the badge
Text2.id: 1
1.x: 100
1.y: 140

Buttons.nb: 5
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
3.x: 250
3.y: 380
3.link:app/scripts/badge-screen/save-badge.gcs

Button3: Attribute badge
Button3.id: 4
4.link: app/screens/worker-badge-screen.ch
4.x: 550
4.y: 2

Button4: Icon
Button4.id: 5
5.link: app/scripts/badge-screen/select-icon.gcs
5.x: 260
5.y: 150

Button5: Edit
Button5.id: 6
6.link: app/screens/edit-badge.ch
6.x: 550
6.y: 80

Edit.BeginX: 270
Edit.BeginY: 200
Edit.width: 200
Edit.size: 50


[events]
Button-1: @[end]
Key: @[end]
[/events]