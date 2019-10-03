;! = Alt
;+ = Shift
;^ = Ctrl
;# = Windows key

;Pressing F6 will auto click until you move the position of the mouse.
$F6::
MouseGetPos, x1,y1 
Loop{
	MouseGetPos, X2, Y2
	if (X1 <> x2) or (y1 <> y2){
		break
		}
	Click
	}
return

;Pressing F8 will hold down left click until you left click.
$F8:: ;hold the left mouse button down until left click
Click down
	if (Click){
		Click up
	}	
return

;Pressing F12 will hold down right click until you right click.
$f12:: ;hold the right mouse button down until right click
Click down right
if (Click right){
    Click up right
	}
return

;Pressing F10 will press shift repeatedly until you move your mouse.
$F10::
MouseGetPos, x1,y1
Loop
{
	MouseGetPos, X2, Y2
	if (X1 <> x2) or (y1 <> y2)
		break
Send {Shift Down}
Send {Shift Up}
}
return

;Shift F7 will terminate the Auto Hotkey Script
+F7::Exitapp

;Pressing Escape will terminate the Auto Hotkey Script
Escape::
ExitApp
Return

