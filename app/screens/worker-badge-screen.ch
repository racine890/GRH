#
#	Worker badge screen
#		Affectation des badges à des employés
#

Background: app/res/bgform.png

Text.nb: 3
Text1: Select worker
Text1.id: 0
0.x: 200
0.y: 150

Text2: Select badge
Text2.id: 1
1.x: 200
1.y: 250

Text3: Enter Period
Text3.id: 4
4.x: 200
4.y: 50

Buttons.nb: 3
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back 
Button1.id: 2
2.link: app/screens/badge-screen.ch
2.x: 150
2.y: 350

Button2: Save
Button2.id: 3
3.link: app/scripts/worker-badge/save.gcs
3.x: 320
3.y: 350

Button3: Revoke all
Button3.id: 6
6.link: app/scripts/worker-badge/revoke.gcs
6.x: 500
6.y: 150

Input.nb: 1
Input.Background: #ADD2CA

Input1.id: 5
5.x: 275
5.y: 75

OnDisplay: app/scripts/worker-badge/listBoxWorkerBadge.gcs

[events]
Button-1: app/scripts/worker-badge/showBadge.gcs
[/events]