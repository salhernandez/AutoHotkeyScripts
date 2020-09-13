#Persistent
#SingleInstance force

;================================================================================================
;  CapsLock processing.  Must double tap CapsLock to toggle CapsLock mode on or off.
;================================================================================================
; Must double tap CapsLock to toggle CapsLock mode on or off.
CapsLock::
    KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
    KeyWait, CapsLock, D T0.2                                           ; ErrorLevel = 1 if CapsLock not down within 0.2 seconds.
    if ((ErrorLevel = 0) && (A_PriorKey = "CapsLock") )                 ; Is a double tap on CapsLock?
        {
        SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"  ; Toggle the state of CapsLock LED
        }
return

;===============================================================================================
; Bind jkli to left, down, right, up
;===============================================================================================
CapsLock & J::Send, {blind}{Left}
CapsLock & K::Send, {blind}{Down}
CapsLock & L::Send, {blind}{Right}
CapsLock & I::Send, {blind}{Up}
	
	
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

; Window Buttons - Minimize Window
CapsLock & p:: WinMinimize, A
return

; Maximize/Restore Window
CapsLock & [::
	WinGet, WinStyle, MinMax, % "ahk_id " WinExist("A")
	If (WinStyle = 1)
		WinRestore, A
	Else
		WinMaximize, A
return

; Close Window
CapsLock & ]:: 
	WinClose, A
return

; Menu Button
CapsLock & H::
    Send, {Shift down}{f10 down}
    Send, {Shift up}{f10 down}
return

; Hard Refresh
CapsLock & Y::
    Send, {Ctrl down}{Shift down}{R down}
    Send, {Ctrl up}{Shift up}{R up}
return

; Delete
Capslock & BackSpace::
    Send, {Delete down}
    Send, {Delete up}
return

; Cycle tab left
CapsLock & F::
    Send, {Ctrl down}{Shift down}{Tab down}
    Send, {Ctrl up}{Shift up}{Tab up}
return

; Cycle tab left
CapsLock & G::
    Send, {Ctrl down}{Tab down}
    Send, {Ctrl up}{Tab up}
return

; Page Up
CapsLock & R::
    While GetKeyState("R","P")
    {
        Send {PgUp}
        Sleep 200
    }
    return

; Page Down
CapsLock & V::
    While GetKeyState("V","P")
    {
        Send {PgDn}
        Sleep 200
    }
    return

; Show active Window
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

; 99% of code traken from 
; https://www.autohotkey.com/docs_1.0/scripts/KeyboardOnScreen.htm

; Show Keyboard
CapsLock & C::

; https://www.autohotkey.com/docs_1.0/scripts/KeyboardOnScreen.htm

;---- Configuration Section: Customize the size of the on-screen keyboard and
; other options here.

; Changing this font size will make the entire on-screen keyboard get
; larger or smaller:
k_FontSize = 15
k_MainSize = 40

k_FontName = Verdana  ; This can be blank to use the system's default font.
k_FontStyle = Italic    ; Example of an alternative: Italic Underline

; Names for the tray menu items:
k_MenuItemHide = Hide on-screen &keyboard
k_MenuItemShow = Show on-screen &keyboard

; To have the keyboard appear on a monitor other than the primary, specify
; a number such as 2 for the following variable.  Leave it blank to use
; the primary:
k_Monitor = 

;---- Calculate object dimensions based on chosen font size:
k_KeyWidth = %k_MainSize%
k_KeyWidth *= 3
k_KeyHeight = %k_MainSize%
k_KeyHeight *= 3
k_KeyMargin = %k_MainSize%
k_KeyMargin /= 6
k_SpacebarWidth = %k_MainSize%
k_SpacebarWidth *= 25
k_KeyWidthHalf = %k_KeyWidth%
k_KeyWidthHalf /= 2

k_KeySize = w%k_KeyWidth% h%k_KeyHeight%
k_Position = x+%k_KeyMargin% %k_KeySize%

;---- Create a GUI window for the on-screen keyboard:
Gui, Font, s%k_FontSize% %k_FontStyle%, %k_FontName%
Gui, -Caption +E0x200 +ToolWindow
TransColor = F1ECED
Gui, Color, %TransColor%  ; This color will be made transparent later below.

;---- Add a button for each key. Position the first button with absolute
; coordinates so that all other buttons can be positioned relative to it:
Gui, Add, Button, section %k_KeySize% xm+%k_KeyWidth%, 1
Gui, Add, Button, %k_Position%, 2
Gui, Add, Button, %k_Position%, 3
Gui, Add, Button, %k_Position%, 4
Gui, Add, Button, %k_Position%, 5
Gui, Add, Button, %k_Position%, 6
Gui, Add, Button, %k_Position%, 7
Gui, Add, Button, %k_Position%, 8
Gui, Add, Button, %k_Position%, 9
Gui, Add, Button, %k_Position%, 0
Gui, Add, Button, %k_Position%, -
Gui, Add, Button, %k_Position%, =
Gui, Add, Button, %k_Position%, Bk

Gui, Add, Button, xm y+%k_KeyMargin% h%k_KeyHeight%, Tab  ; Auto-width.
Gui, Add, Button, %k_Position%, Q `r left click
Gui, Add, Button, %k_Position%, W `r mouse up
Gui, Add, Button, %k_Position%, E `r right click
Gui, Add, Button, %k_Position%, R
Gui, Add, Button, %k_Position%, T
Gui, Add, Button, %k_Position%, Y
Gui, Add, Button, %k_Position%, U `r F11
Gui, Add, Button, %k_Position%, I `r up arrow
Gui, Add, Button, %k_Position%, O `r F12
Gui, Add, Button, %k_Position%, P `r min. window
Gui, Add, Button, %k_Position%, [ `r max window
Gui, Add, Button, %k_Position%, ] `r close window
Gui, Add, Button, %k_Position%, \

Gui, Add, Button, xs+%k_KeyWidthHalf% y+%k_KeyMargin% %k_KeySize%, A `r mouse left
Gui, Add, Button, %k_Position%, S `r mouse down
Gui, Add, Button, %k_Position%, D `r mouse right
Gui, Add, Button, %k_Position%, F `r tab forward
Gui, Add, Button, %k_Position%, G `r tab backward
Gui, Add, Button, %k_Position%, H
Gui, Add, Button, %k_Position%, J `r left arrow
Gui, Add, Button, %k_Position%, K `r down arrow
Gui, Add, Button, %k_Position%, L `r right arrow
Gui, Add, Button, %k_Position%, `;
Gui, Add, Button, %k_Position%, '
Gui, Add, Button, x+%k_KeyMargin% h%k_KeyHeight%, Enter  ; Auto-width.

; The first button below adds %A_Space% at the end to widen it a little,
; making the layout of keys next to it more accurately reflect a real keyboard:
Gui, Add, Button, xm y+%k_KeyMargin% h%k_KeyHeight%, Shift%A_Space%%A_Space%
Gui, Add, Button, %k_Position%, Z
Gui, Add, Button, %k_Position%, X
Gui, Add, Button, %k_Position%, C `n show keyboard
Gui, Add, Button, %k_Position%, V
Gui, Add, Button, %k_Position%, B
Gui, Add, Button, %k_Position%, N `n show focused window
Gui, Add, Button, %k_Position%, M
Gui, Add, Button, %k_Position%, `,
Gui, Add, Button, %k_Position%, .
Gui, Add, Button, %k_Position%, /

Gui, Add, Button, xm y+%k_KeyMargin% h%k_KeyHeight%, Ctrl  ; Auto-width.
Gui, Add, Button, h%k_KeyHeight% x+%k_KeyMargin%, Win      ; Auto-width.
Gui, Add, Button, h%k_KeyHeight% x+%k_KeyMargin%, Alt      ; Auto-width.
Gui, Add, Button, h%k_KeyHeight% x+%k_KeyMargin% w%k_SpacebarWidth%, Space

;---- Show the window:
Gui, Show
k_IsVisible = y

WinGet, k_ID, ID, A   ; Get its window ID.
WinGetPos,,, k_WindowWidth, k_WindowHeight, A

;---- Position the keyboard at the bottom of the screen (taking into account
; the position of the taskbar):
SysGet, k_WorkArea, MonitorWorkArea, %k_Monitor%

; Calculate window's X-position:
k_WindowX = %k_WorkAreaRight%
k_WindowX -= %k_WorkAreaLeft%  ; Now k_WindowX contains the width of this monitor.
k_WindowX -= %k_WindowWidth%
k_WindowX /= 2  ; Calculate position to center it horizontally.
; The following is done in case the window will be on a non-primary monitor
; or if the taskbar is anchored on the left side of the screen:
k_WindowX += %k_WorkAreaLeft%

; Calculate window's Y-position:
k_WindowY = %k_WorkAreaBottom%
k_WindowY -= %k_WindowHeight%

WinMove, A,, %k_WindowX%, %k_WindowY%
WinSet, AlwaysOnTop, On, ahk_id %k_ID%
WinSet, TransColor, %TransColor% 220, ahk_id %k_ID%

CloseGuiTimer()

CloseGuiTimer()
{
    Sleep, 4000
    Gui, Cancel
	return
}

k_ShowHide:
if k_IsVisible = y
{
    Gui, Cancel
}
else
{
    Gui, Show
}
return