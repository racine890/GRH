Background: app/res/bgform.png
Text.nb: 1
Text1: Enter Post
Text1.id: 0
0.x: 100
0.y: 200



Buttons.nb: 3
Button.size: 30
Button.width: 100
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Return
Button1.id: 1
1.link: app/screens/main.ch
1.x: 100
1.y: 300

Button2: Save
Button2.id:2
2.x: 250
2.y: 300
2.link:app/scripts/post/save-post.gcs

input.nb: 1
input.Background: #ADD2CA
Input1: 
Input1.id: 3
3.x: 250
3.y: 220



Button3: Attribute post
Button3.id: 4
4.link: app/screens/worker-post-screen.ch
4.x: 550
4.y: 2


[events]
Button-1: @[end]
[/events]