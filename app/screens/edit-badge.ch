#
#	Badge-Screen.ch
#		Ecran formulaire de modification d'un travailleur
#

Background: app/res/bgform.png
OnDisplay: app/scripts/badge/listBoxBadge.gcs

Text.nb: 2
Text1: Entrer new description
Text1.id: 0
0.x: 300
0.y: 60

Text2: Select new badge
Text2.id: 1
1.x: 300
1.y: 110



Buttons.nb: 3
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/badge-screen.ch
2.x: 100
2.y: 380

Button2: Update
Button2.id:3
3.x: 265
3.y: 380
3.link:app/scripts/badge/update-badge.gcs

Button3: Delete
Button3.id: 4
#4.link: app/scripts/worker-edit/delete.gcs
4.x: 430
4.y: 380



Edit.BeginX: 270
Edit.BeginY: 200
Edit.width: 200
Edit.size: 50

[events]
Button-1: app/scripts/badge/set-badge.gcs
Key: @[end]
[/events]