#
#	Worker-Screen.ch
#		Ecran formulaire de création d'un travailleur
#

Background: app/res/bgform.png

Text.nb: 1
Text1: selected the post
Text1.id: 0
0.x: 100
0.y: 60



Buttons.nb: 2
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 6
6.link: app/screens/consult-folder.ch
6.x: 100
6.y: 380

Button2: Transfer
Button2.id:7
7.x: 300
7.y: 380
7.link:app/scripts/post-workerstation/transfer.gcs

OnDisplay: app/scripts/post-workerstation/listBoxPost.gcs

[events]
Button-1: @[end]
BackSpace: @[end]
Return: @[end]
Key: @[end]
[/events]