#
#	Badge-Screen.ch
#		Ecran formulaire de modification d'un travailleur
#

Background: app/res/bgform.png
OnDisplay: app/scripts/badge/listBoxBadge.gcs

Text.nb: 3
Text1: Description
Text1.id: 0
0.x: 240
0.y: 350

Text2: Select badge to modify
Text2.id: 1
1.x: 110
1.y: 350

Text3: select the new badge icon
Text3.id: 5
5.x: 290
5.y: 4

Buttons.nb: 3
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/badge-screen.ch
2.x: 550
2.y: 350

Button2: Update
Button2.id:3
3.x: 550
3.y: 400
3.link: app/scripts/badge/update-badge.gcs

Button3: Delete
Button3.id: 4
4.link: app/scripts/badge/delete-badge.gcs
4.x: 550
4.y: 450

Edit.BeginX: 270
Edit.BeginY: 380
Edit.width: 200
Edit.size: 50

[events]
Button-1: app/scripts/badge/set-badge.gcs
Key: @[end]
[/events]