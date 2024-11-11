#
#	Worker-Screen.ch
#		Ecran formulaire de création d'un travailleur
#

Background: app/res/bgform.png

Text.nb: 5
Text1: Enter name
Text1.id: 0
0.x: 100
0.y: 60

Text2: Enter Lastname
Text2.id: 1
1.x: 100
1.y: 110

Text3: Enter birthday
Text3.id: 2
2.x: 100
2.y: 160

Text4: Enter address
Text4.id: 3
3.x: 100
3.y:210

Text5: Enter mail
Text5.id: 4
4.x: 100
4.y: 260

Buttons.nb: 6
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 6
6.link: app/screens/main.ch
6.x: 100
6.y: 380

Button2: Save
Button2.id:7
7.x: 300
7.y: 380
7.link:app/scripts/worker-screen/save.gcs

Button3: Attribute status
Button3.id: 13
13.link: app/screens/worker-status-screen.ch
13.x: 550
13.y: 2

Button4: Manage files
Button4.id: 14
14.link: @[SetVar *filter 1;load app/screens/worker-folder-document-screen.ch;end]
14.x: 550
14.y: 40

Button5: Edit
Button5.id: 15
15.link: app/screens/worker-edit.ch
15.x: 550
15.y: 80

Button6: Print Summary
Button6.id: 16
16.link: app/scripts/states/worker_summary.gcs
16.x: 550
16.y: 120

Input.nb: 5
Input.Background: #ADD2CA

Input1.id: 8
8.x: 250
8.y: 80

Input2.id: 9
9.x: 250
9.y: 130

Input3.id: 10
10.x: 250
10.y: 180
10.type: date

Input4.id: 11
11.x: 250
11.y: 230

Input5.id: 12
12.x: 250
12.y: 280

[events]
Button-1: @[end]
Key: @[end]
[/events]