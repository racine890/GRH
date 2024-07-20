Background: app/res/bgcongig1.png

Text.nb: 5
Text1: User Management
Text1.id: 0
0.x: 70
0.y: 50

Text2: Add A Right
Text2.id: 1
1.x: 50
1.y: 180

Text3: Username
Text3.id: 2
2.x: 250
2.y: 125


Text4: password
Text4.id: 3
3.x: 250
3.y: 180

Text5: choose the right
Text5.id: 4
4.x: 250
4.y: 230

input.nb: 2
input.Background: #ADD2CA
Input1:
Input1.id: 5
5.x: 350
5.y: 150

Input2: 
Input2.id: 6
6.x: 350
6.y:  200


Buttons.nb: 2
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Return
Button1.id: 8
8.link: app/screens/main.ch
8.x: 20
8.y: 250

Button2: Save
Button2.id: 9
9.link: app/scripts/config-1/save-user.gcs
9.x: 360
9.y: 320




OnDisplay: app/scripts/config-1/config-init.gcs

#on executera le script contenu dans le fichier switch-config1.gcs
[events]
Button-1: app/scripts/config-1/switch-config1.gcs
[/events]

