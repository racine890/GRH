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

#Text6: Enter date of service
#Text6.id: 5
#5.x: 100
#5.y: 300


Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Return
Button1.id: 6
6.link: app/screens/main.ch
6.x: 100
6.y: 380

Button2: Save
Button2.id:7
7.x: 250
7.y: 380
7.link:app/scripts/worker/data-worker.gcs

input.nb: 5
input.Background: #ADD2CA
Input1: 
Input1.id: 8
8.x: 250
8.y: 80

Input2:
Input2.id: 9
9.x: 250
9.y: 130

Input3:
Input3.id: 10
10.x: 250
10.y: 180
10.type: date

Input4:
Input4.id: 11
11.x: 250
11.y: 230

Input5:
Input5.id: 12
12.x: 250
12.y: 280

#Input6:
#Input6.id: 13
#13.x: 300
#13.y: 330

[events]
Button-1: @[end]
[/events]