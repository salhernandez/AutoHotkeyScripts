#SingleInstance force
;source code borrowed from
;https://autohotkey.com/board/topic/32077-minimizing-maximizing-and-closing-windows/

^+p:: WinMinimize, A

^+[::
WinGet, WinStyle, MinMax, % "ahk_id " WinExist("A")
If (WinStyle = 1)
  WinRestore, A
Else
  WinMaximize, A
Return

^+]:: WinClose, A
