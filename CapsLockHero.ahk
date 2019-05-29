#Persistent
#SingleInstance force

CapsLock & J::
	Send, {Left down}
return

CapsLock & K::
    Send, {Down down}
return

CapsLock & L::
    Send, {Right down}
return

CapsLock & I::
    Send, {Up down}
return
	
	
; Mouse Control
; https://autohotkey.com/board/topic/122839-trying-to-make-keyboard-move-mouse-pointer-please-read-before-posting/
CapsLock & A::
CapsLock & D::
CapsLock & W::
CapsLock & S::
    R := 0
    Loop{
	 X := Y := 0
	 MouseMove, X := GetKeyState("A","P") ? -++R : GetKeyState("D","P") ? ++R : X
		  , Y := GetKeyState("W","P") ? -++R : GetKeyState("S","P") ? ++R : Y,0,R
	}until !X && !Y
return

CapsLock & Q::
	Click
return

CapsLock & E::
	Click, Right
return

;F11
CapsLock & U::
	Send, {F11 down}
	Send, {F11 up}
return

;F12
CapsLock & O::
	Send, {F12 down}
	Send, {F12 up}
return

;Window Buttons
CapsLock & p:: WinMinimize, A
return

CapsLock & [::
	WinGet, WinStyle, MinMax, % "ahk_id " WinExist("A")
	If (WinStyle = 1)
		WinRestore, A
	Else
		WinMaximize, A
return

CapsLock & ]:: 
	WinClose, A
return

CapsLock & N::
; Took most of this one from the AHK Forums
border_thickness = 10
border_color = FF0000

WinGetPos, x, y, w, h, A
if (x="")
    return
Gui, +Lastfound +AlwaysOnTop +Toolwindow

borderType:="inside"                ; set to inside, outside, or both

if (borderType="outside") { 
    outerX:=0
    outerY:=0
    outerX2:=w+2*border_thickness
    outerY2:=h+2*border_thickness

    innerX:=border_thickness
    innerY:=border_thickness
    innerX2:=border_thickness+w
    innerY2:=border_thickness+h

    newX:=x-border_thickness
    newY:=y-border_thickness
    newW:=w+2*border_thickness
    newH:=h+2*border_thickness

} else if (borderType="inside") {   
    WinGet, myState, MinMax, A
    if (myState=1)
        offset:=8
    else 
        offset:=0

    outerX:=offset
    outerY:=offset
    outerX2:=w-offset
    outerY2:=h-offset

    innerX:=border_thickness+offset
    innerY:=border_thickness+offset
    innerX2:=w-border_thickness-offset
    innerY2:=h-border_thickness-offset

    newX:=x
    newY:=y
    newW:=w
    newH:=h



} else if (borderType="both") { 
    outerX:=0
    outerY:=0
    outerX2:=w+2*border_thickness
    outerY2:=h+2*border_thickness

    innerX:=border_thickness*2
    innerY:=border_thickness*2
    innerX2:=w
    innerY2:=h

    newX:=x-border_thickness
    newY:=y-border_thickness
    newW:=w+4*border_thickness
    newH:=h+4*border_thickness
}



Gui, Color, FF0000
Gui, -Caption

;WinSet, Region, 0-0 %w%-0 %w%-%h% 0-%h% 0-0 %border_thickness%-%border_thickness% %iw%-%border_thickness% %iw%-%ih% %border_thickness%-%ih% %border_thickness%-%border_thickness%
 WinSet, Region, %outerX%-%outerY% %outerX2%-%outerY% %outerX2%-%outerY2% %outerX%-%outerY2% %outerX%-%outerY%    %innerX%-%innerY% %innerX2%-%innerY% %innerX2%-%innerY2% %innerX%-%innerY2% %innerX%-%innerY% 


;Gui, Show, w%w% h%h% x%x% y%y% NoActivate, Table awaiting Action
Gui, Show, w%newW% h%newH% x%newX% y%newY% NoActivate, Table awaiting Action

Sleep, 500
Gui, Destroy
return