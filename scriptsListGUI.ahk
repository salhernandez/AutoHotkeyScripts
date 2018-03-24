;taken from DLASO https://pastebin.com/cjzRmBXw

; Taken and modified from AfterLemon's Script here:
; http://www.autohotkey.com/board/topic/93997-list-all-ahk-scripts-in-directory-in-gui/

#Persistent
#SingleInstance Force
SetBatchLines -1
SysGet, Size, MonitorWorkArea
SetTitleMatchMode, 2




;
ButtonWidth := 160                      ; Can change these values
IndentFromRight := 30
;
XButtonXCoord := ButtonWidth + 10       ; Don't change these
TitleWidth := ButtonWidth - 20
SceneWidth := ButtonWidth + 35
;
GuiRight := SizeRight - IndentFromRight - SceneWidth
Button_Right := SizeRight - IndentFromRight - SceneWidth
Button_Bottom := SizeBottom - 39
;
Gui, 1: Color, cFFFFFF
Loop, %A_ScriptDir%\*.ahk
{
   If (A_LoopFileName <> "Main Window.ahk")
   {
      A_IndexCount := A_Index
      If A_IndexCountMinus
         A_IndexCount -= A_IndexCountMinus
      YPos := A_IndexCount * 25 - 20
      StringTrimRight, FileName%A_IndexCount%, A_LoopFileName, 4
      RunPath%A_IndexCount% := A_LoopFileFullPath
      Gui, 1: Add, Button, w%ButtonWidth% h20 x5 y%YPos% gRun, % FileName%A_IndexCount%
      Gui, 1: Add, Button, w20 h20 x%XButtonXCoord% Disabled y%YPos% vFileName2%A_IndexCount%, K
      YPos%A_IndexCount% := YPos . "," . FileName%A_IndexCount%
   }
   else
   {
      A_IndexCountMinus++
      continue
   }
}
YPos += 50
GuiBottom := SizeBottom - YPos
TitlePos := YPos - 21
ButtonPos := YPos - 25
Gui, 1: Font, w700 c000000
Gui, 1: Add, Text, w%TitleWidth% h20 x30 y%TitlePos% Center gDrag, AHK Scripts
Gui, 1: Font, c000000
Gui, 1: Add, Button, w20 h20 x5 y%ButtonPos%, &-
Gui, 1: Add, Button, w20 h20 x%XButtonXCoord% y%ButtonPos%, &X
Gui, 1: +AlwaysOnTop -Caption +ToolWindow +Border
Gui, 1: Show, NoActivate w%SceneWidth% h%YPos% x%GuiRight% y%GuiBottom%, Main Window
;
WinGetPos X, Y, Width, Height, Main Window
MaxY := SizeBottom - Height
MaxX := SizeRight - Width - IndentFromRight
WinMove Main Window, , %MaxX%, %MaxY%
return


!#x::
IfWinExist Minimized ahk_class AutoHotkeyGUI, AHK Scripts
{
   gosub 2Button+
   return
}
else IfWinExist Main Window ahk_class AutoHotkeyGUI, AHK Scripts
{
   gosub Button-
   return
}


Drag:
   PostMessage, 0xA1, 2,,, A
return

Run:
   Loop
   {
   If (A_GuiControl = FileName%A_Index%)
   {
      RunPath := RunPath%A_Index%
      Run, Autohotkey.exe "%RunPath%",,, ProgRun%A_Index%
      ProcessRun := A_Index
      break
   }
   }
   GuiControl, Enable, FileName2%ProcessRun%
   Gui, 1: Show, NoActivate w%SceneWidth% h%YPos% x%GuiRight% y%GuiBottom%, Main Window
   ;
   WinGetPos X, Y, Width, Height, Main Window
   MaxY := SizeBottom - Height
   MaxX := SizeRight - Width - IndentFromRight
   WinMove Main Window, , %MaxX%, %MaxY%
return


ButtonK:
   StringTrimLeft, RunningName, A_GuiControl,9
   FileNameKill := ProgRun%RunningName%
   Process, Close, % FileNameKill
   GuiControl, Disable, FileName2%RunningName%
return

Button-:
   Gui, 1: Cancel
   Gui, 2: Color, cFFFFFF
   Gui, 2: Font, w700 c000000
   Gui, 2: Add, Text, w%TitleWidth% h20 x30 y9 Center gDrag, AHK Scripts
   Gui, 2: Font, c000000
   Gui, 2: Add, Button, w20 h20 x5 y5, &+
   Gui, 2: Add, Button, w20 h20 x%XButtonXCoord% y5, &X
   Gui, 2: -Caption +AlwaysOnTop +Border
   Gui, 2: Show, NoActivate w%SceneWidth% h30 x%Button_Right% y%Button_Bottom%, Minimized
   WinGetPos X, Y, Width, Height, Minimized
   MaxY := SizeBottom - Height
   MaxX := SizeRight - Width - IndentFromRight
   WinMove Minimized, , %MaxX%, %MaxY%
return

2Button+:
   Gui, 2: Destroy
   Gui, 1: Show, NoActivate w%SceneWidth% h%YPos% x%GuiRight% y%GuiBottom%, Main Window
   WinGetPos X, Y, Width, Height, Main Window
   MaxY := SizeBottom - Height
   MaxX := SizeRight - Width - IndentFromRight
   WinMove Main Window, , %MaxX%, %MaxY%
return


ButtonX:
2ButtonX:
ExitApp
