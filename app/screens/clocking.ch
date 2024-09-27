#
#	clocking
#		Pointage des heures d'arrivée et de départ
#

OnDisplay: app/scripts/clocking/createTable.gcs

Background: app/res/bgform.png
Text.nb: 2
Text1: Clockings
Text1.id: 0
0.x: 300
0.y: 10

Text2: dd/mm/yyyy
Text2.id: 1
1.x: 300
1.y: 50

Buttons.nb: 2

Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F

Button1: Turn back
Button1.id: 2
2.link: app/screens/main.ch
2.x: 120
2.y: 400

Button2: Save it!
Button2.id: 3
3.link: app/scripts/clocking/save.gcs
3.x: 270
3.y: 400

Button3: Set Documents
Button3.id: 4
4.link: app/scripts/folder-document/saveFolderDocument.gcs
4.x: 420
4.y: 400

[events]
Key: @[end]
Button-1: @[end]
[/events]
