
Background: app/res/bgmain.png
Background.x: 50
Background.y: 50

Text.nb: 8
Text1: user
Text1.id: 0
0.x: 90
0.y: 170

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
5.x: 370
5.y: 250

Text7: status
Text7.id: 6
6.x: 470
6.y: 250


Text8: configuration 
Text8.id: 7
7.x: 110
7.y: 300
#les icones se telechargerons apres le chargement de l'ppli
OnDisplay: @showIcons

[@showIcons]
LoadPic app/res/user.png at 78-70
LoadPic app/res/configuration.png at 78-230
LoadPic app/res/worker.png at 250-50
LoadPic app/res/postworker.png at 375-50
LoadPic app/res/badge.png at 475-50
LoadPic app/res/event.png at 270-200
LoadPic app/res/time.png at 370-200
LoadPic app/res/preview.png at 470-200


end
[/@showIcons]

# la partie suivante nous permettra de prendre les id de nos icone et les reliers a des evenements

[events]
# on executera la fonction @dist au clic de la souris 
Button-1: @dist
[/events]

[@dist]
print var LASTCLICKEDID
#1=user,11=configuration,12=worker,13=post,14=badge,15=events,16=clocking,17=status
#print val Hello world!
#print var
#print file
#print section 
#PrintVars

switch LASTCLICKEDID
if 1 then
    load app/home.ch
    end
if 11 then
    execute app/scripts/sign-in/configure.gcs
    end
if 12 then
    load app/home.ch
    end
if 13 then
     load app/home.ch
if 14 then
	 load app/home.ch
if 15 then
     load app/home.ch
if 16 then
     load app/home.ch
if 13 then
    #execute 4.gcx
	 load app/home.ch
    end
[/@dist]



