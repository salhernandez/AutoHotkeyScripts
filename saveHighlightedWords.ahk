File := "D:\Desktop\Scratch\stuff.md"

F1:: FileAppend, % GetSelectedText(), %File%

; Credits to dylan904 for the base code
; https://autohotkey.com/board/topic/83364-script-to-append-selected-text-to-a-file/
; If your active window is not a browser, append use the title for the information
; Else use the title and GetActiveBrowserURL.ahk to also add the URL as a hyperlink

GetSelectedText(
{
   tmp = %ClipboardAll% ; save clipboard

   Clipboard := "" ; clear clipboard

   Send, ^c ; simulate Ctrl+C (=selection in clipboard)

   ClipWait, 1 ; wait until clipboard contains data

   WinGet, active_id, ID, A
   WinGetTitle, this_title, ahk_id %active_id%

   selection = `n`n##### %Clipboard% `n* %this_title% ; save the content of the clipboard

   Clipboard = %tmp% ; restore old content of the clipboard

   return selection
}
