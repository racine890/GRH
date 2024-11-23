Background: app/res/bgcongig1.png

OnDisplay: app/scripts/userSettings/displayStuff.gcs

Text.nb: 6
Text1: User Settings
Text1.id: 0
0.x: 70
0.y: 50

Text2: Username
Text2.id: 2
2.x: 250
2.y: 25

Text3: Old password
Text3.id: 3
3.x: 250
3.y: 100

Text4: New password
Text4.id: 4
4.x: 250
4.y: 140

Text5: Confirm
Text5.id: 7
7.x: 250
7.y: 180

Text6.id: 13
13.x: 350
13.y: 380

Input.nb: 4
Input.Background: #ADD2CA
Input1.id: 5
5.x: 350
5.y: 50

Input2.id: 6
6.x: 350
6.y: 200

Input3.id: 10
10.x: 350
10.y: 120

Input4.id: 11
11.x: 350
11.y: 160

Buttons.nb: 4
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 8
8.link: app/screens/main.ch
8.x: 30
8.y: 250

Button4: Logout
Button4.id: 12
12.link: app/screens/sign-in.ch
12.x: 30
12.y: 300

Button2: Update Username
Button2.id: 9
9.link: app/scripts/userSettings/updateUsername.gcs
9.x: 380
9.y: 70

Button3: Update password
Button3.id: 1
1.link: app/scripts/userSettings/updatePassword.gcs
1.x: 360
1.y: 230

#on executera le script contenu dans le fichier switch-config1.gcs
[events]
Button-1: @[end]
Key: @[end]
BackSpace: @[end]
Return: @[end]
[/events]
