Background: app/res/bgcongig1.png

Text.nb: 3
Text1: User Management
Text1.id: 0
0.x: 70
0.y: 50

Text2: Add A Right
Text2.id: 1
1.x: 50
1.y: 150

Text3: Enter Right
Text3.id: 2
2.x: 200
2.y: 100

input.nb: 1
input.Background: #ADD2CA
Input1: 
Input1.id: 3
3.x: 270
3.y: 120

Buttons.nb: 1
Button.size: 50
Button.width: 100
Button.Background: #55968F
Button.Foreground: #FFFFFF

Button1: Save
Button1.id: 4
4.x: 300
4.y: 200
4.link: app/scripts/config-1/save-right.gcs
OnDisplay: app/scripts/config-1/loadimag.gcs
#on executera le script contenu dans le fichier switch-config1.gcs
[events]
Button-1: app/scripts/config-1/switch-config1.gcs
[/events]

