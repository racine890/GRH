#
#	Worker-Screen.ch
#		Ecran formulaire de création d'un travailleur
#

Background: app/res/bgform.png
OnDisplay: app/scripts/worker-edit/list.gcs

Text.nb: 5
Text1: Enter name
Text1.id: 0
0.x: 300
0.y: 60

Text2: Enter Lastname
Text2.id: 1
1.x: 300
1.y: 110

Text3: Enter birthday
Text3.id: 2
2.x: 300
2.y: 160

Text4: Enter address
Text4.id: 3
3.x: 300
3.y: 210

Text5: Enter mail
Text5.id: 4
4.x: 300
4.y: 260

Buttons.nb: 3
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 6
6.link: app/screens/worker-screen.ch
6.x: 100
6.y: 380

Button2: Update
Button2.id:7
7.x: 265
7.y: 380
7.link:app/scripts/worker-edit/update.gcs

Button3: Delete
Button3.id: 13
13.link: app/scripts/worker-edit/delete.gcs
13.x: 430
13.y: 380

Input.nb: 5
Input.Background: #ADD2CA

Input1.id: 8
8.x: 450
8.y: 80

Input2.id: 9
9.x: 450
9.y: 130

Input3.id: 10
10.x: 450
10.y: 180
10.type: date

Input4.id: 11
11.x: 450
11.y: 230

Input5.id: 12
12.x: 450
12.y: 280

[events]
Button-1: app/scripts/worker-edit/set.gcs
Key: @[end]
[/events]