#NoEnv
#Persistent
#SingleInstance force
#usehook

; Hold Eraser Button
; #F18::
; Double-Click Eraser Button
#F19:: 
    Send, {Ctrl Down}{y}
    Send, {Ctrl Up}{y}
return 
; Click Eraser Button
#F20::
    Send, {Ctrl Down}{z}
    Send, {Ctrl Up}{z}
return