#
#	States.ch
#		Ecran spécial pour les états
#

Background: app/res/bgform.png
OnDisplay: app/scripts/states/translate.gcs

Buttons.nb: 4
Button.size: 30
Button.width: 170
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

Button4: Stations summary
Button4.id: 3
3.x: 550
3.y: 145
3.link: app/scripts/states/posts_summary.gcs

Button2: Return
Button2.id: 1
1.x: 550
1.y: 180
1.link: app/screens/main.ch

[events]
Key: @[end]
Button-1: @[end]
BackSpace: @[end]
Return: @[end]
[/events]
