Title: Notifications
Width: 500
Size: 400
use tk

Onload: app/scripts/messages/init.gcs
OnDisplay: app/scripts/messages/display.gcs

Edit.nb: 1
Edit1.id: 0
0.x: 250
0.y: 150
0.w: 400
0.h: 150

Text.nb: 1
Text1: Notifications
Text1.id: 1
1.x: 50

Buttons.nb: 3
Button1: Next
Button1.id: 2
2.x: 300
2.y: 260
2.link: app/scripts/messages/next.gcs

Button3: Remove
Button3.id: 4
4.x: 200
4.y: 260
4.link: app/scripts/messages/remove.gcs

Button2: Previous
Button2.id: 3
3.x: 100
3.y: 260
3.link: app/scripts/messages/previous.gcs


AppIcon: app/res/notification.png

[events]
FocusOut: @[exit]
[/events]