Background: app/res/plum.png

Input.nb: 2

Input.nb: 2
Input.Background: #ADD2CA
Input1.id: 2
2.x: 450
2.y: 250

Input2.id: 3
3.x: 450
3.y: 300

Text.nb: 2
Text1: E-mail address
Text1.id: 6
6.x: 300
6.y: 230

Text2: Password
Text2.id: 7
7.x: 300
7.y: 280

Buttons.nb: 1
Button1: Sign-in
Button1.id: 0
0.x: 370
0.y: 350
0.link: app/scripts/sign-in/checkAndAllow.gcs

Buttons.width: 200
Buttons.size: 50
Button.Background: #55968F
Button.Foreground: #FFFFFF

OnDisplay: app/scripts/sign-in/configure.gcs

[events]
Key: @[end]
Button-1: @[end]
BackSpace: @[end]
Return: @[end]
[/events]
