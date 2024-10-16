#
#	States.ch
#		Ecran spécial pour les états
#

Background: app/res/bgform.png

Buttons.nb: 3
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Workers summary
Button1.id: 0
0.x: 550
0.y: 75
0.link: app/scripts/states/worker_summary.gcs

Button3: Clocking summary
Button3.id: 2
2.x: 550
2.y: 110
2.link: app/screens/print_clocking.ch

Button2: Return
Button2.id: 1
1.x: 550
1.y: 175
1.link: app/screens/main.ch