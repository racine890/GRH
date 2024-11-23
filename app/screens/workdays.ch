Background: app/res/bgcongig1.png
Input.Background: #ADD2CA
Button.Background: #FFFFFF
Button.Foreground: #55968F

OnDisplay: app/scripts/workdays/fill.gcs

Text.nb: 12
Text1: Arrival
Text1.id: 0
0.x: 170

Text2: Depart
Text2.id: 1
1.x: 370

Text3: Monday
Text3.id: 18
18.x: 550
18.y: 20

Text4: Tuesday
Text4.id: 19
19.x: 550
19.y: 50

Text5: Wednesday
Text5.id: 20
20.x: 550
20.y: 80

Text6: Thursday
Text6.id: 21
21.x: 550
21.y: 110

Text7: Friday
Text7.id: 22
22.x: 550
22.y: 140

Text8: Saturday
Text8.id: 23
23.x: 550
23.y: 170

Text9: Sunday
Text9.id: 24
24.x: 550
24.y: 200

Text10: General Settings
Text10.id: 25
25.x: 70
25.y: 130

Text11: Work Planning
Text11.id: 26
26.x: 40
26.y: 200

Text12: User Management
Text12.id: 27
27.x: 70
27.y: 50

Buttons.nb: 2

Button1: Turn Back
Button1.id: 2
2.x: 20
2.y: 250
2.link: app/screens/main.ch

Button2: Update
Button2.id: 3
3.x: 450
3.y: 400
3.link: app/scripts/workdays/update.gcs

Input.nb: 14

Input1: 08:00
Input1.id: 4
4.x: 160
4.y: 50

Input2: 17:00
Input2.id: 5
5.x: 350
5.y: 50

Input3: 08:00
Input3.id: 6
6.x: 160
6.y: 80

Input4: 17:00
Input4.id: 7
7.x: 350
7.y: 80

Input5: 08:00
Input5.id: 8
8.x: 160
8.y: 110

Input6: 17:00
Input6.id: 9
9.x: 350
9.y: 110

Input7: 08:00
Input7.id: 10
10.x: 160
10.y: 140

Input8: 17:00
Input8.id: 11
11.x: 350
11.y: 140

Input9: 08:00
Input9.id: 12
12.x: 160
12.y: 170

Input10: 17:00
Input10.id: 13
13.x: 350
13.y: 170

Input11: 08:00
Input11.id: 14
14.x: 160
14.y: 200

Input12: 17:00
Input12.id: 15
15.x: 350
15.y: 200

Input13: 08:00
Input13.id: 16
16.x: 160
16.y: 230

Input14: 17:00
Input14.id: 17
17.x: 350
17.y: 230

[events]
Button-1: app/scripts/workdays/switch.gcs
Key: @[end]
BackSpace: @[end]
Return: @[end]
[/events]