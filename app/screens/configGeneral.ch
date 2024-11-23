#
# ConfigGeneral.ch
#    Ecran de paramétrage général
#

Background: app/res/bgcongig1.png

Text.nb: 9
Text1: User Management
Text1.id: 0
0.x: 70
0.y: 50

Text2: General Settings
Text2.id: 1
1.x: 70
1.y: 130

Text5: Telephone
Text5.id: 2
2.x: 250
2.y: 125

Text3: Email
Text3.id: 3
3.x: 250
3.y: 180

Text4: IFU
Text4.id: 4
4.x: 250
4.y: 60

Text6: Nom
Text6.id: 10
10.x: 250
10.y: 10

Text7: Legal Age
Text7.id: 15
15.x: 250
15.y: 230

Text8: Retirement Age
Text8.id: 13
13.x: 250
13.y: 280

Text9: Work Planning
Text9.id: 14
14.x: 50
14.y: 200

Input.nb: 6
Input.Background: #ADD2CA

Input1.id: 5
5.x: 350
5.y: 150

Input2.id: 6
6.x: 350
6.y:  200

Input3.id: 11
11.x: 350
11.y: 30

Input4.id: 12
12.x: 350
12.y: 80

Input5.id: 16
16.x: 350
16.y: 250

Input6.id: 17
17.x: 350
17.y: 300

Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 8
8.link: app/screens/main.ch
8.x: 20
8.y: 250

Button2: Save
Button2.id: 9
9.link: app/scripts/configGeneral/save.gcs
9.x: 360
9.y: 320

OnDisplay: app/scripts/configGeneral/display.gcs

[events]
Button-1: app/scripts/configGeneral/switch-config.gcs
Key: @[end]
BackSpace: @[end]
Return: @[end]
[/events]
