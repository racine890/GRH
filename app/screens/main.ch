
Background: app/res/bgmain.png

Text.nb: 8
Text1: user
Text1.id: 0
0.x: 50
0.y: 150

Text2: worker
Text2.id: 1
1.x: 250
1.y: 110

Text3: posts
Text3.id: 2
2.x: 370
2.y:  110

Text4: badge
Text4.id: 3
3.x: 470
3.y: 110

Text5: events 
Text5.id: 4
4.x: 270
4.y: 250

Text6: clocking time 
Text6.id: 5
5.x: 400
5.y: 250

Text7: status
Text7.id: 6
6.x: 470
6.y: 250


Text8: configuration 
Text8.id: 7
7.x: 70
7.y: 300
#les icones se telechargerons apres le chargement de l'appli
OnDisplay: app/scripts/main/loadimg.gcs

# la partie suivante nous permettra de prendre les id de nos icone et les reliers a des evenements

[events]
Button-1: app/scripts/main/switch-main.gcs
[/events]





