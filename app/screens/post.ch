Background: app/res/bgform.png
Text.nb: 1
Text1: Enter Post
Text1.id: 0
0.x: 100
0.y: 200

OnDisplay: app/scripts/post/translate.gcs

Buttons.nb: 4
Button.size: 30
Button.width: 150
Button.Background: #FFFFFF
Button.Foreground: #55968F
Button1: Return
Button1.id: 1
1.link: app/screens/main.ch
1.x: 100
1.y: 300

Button2: Save
Button2.id:2
2.x: 300
2.y: 300
2.link: app/scripts/post/save-post.gcs

Input.nb: 1
Input.Background: #ADD2CA

Input1.id: 3
3.x: 250
3.y: 220

Button3: Attribute Station
Button3.id: 4
4.link: app/screens/worker-post-screen.ch
4.x: 550
4.y: 2

Button4: Stations Summary
Button4.id: 5
5.link: app/scripts/states/posts_summary.gcs
5.x: 550
5.y: 50

[events]
Button-1: @[end]
BackSpace: @[app/screens/main.ch]
Return: @[app/scripts/post/save-post.gcs]
Key: @[end]
[/events]