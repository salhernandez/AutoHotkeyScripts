File := "D:\Desktop\Scratch\stuff.md"

F1:: FileAppend, % GetSelectedText(), %File%

GetSelectedText()

{

   tmp = %ClipboardAll% ; save clipboard

   Clipboard := "" ; clear clipboard

   Send, ^c ; simulate Ctrl+C (=selection in clipboard)

   ClipWait, 1 ; wait until clipboard contains data

   selection = `n`n##### %Clipboard% ; save the content of the clipboard

   Clipboard = %tmp% ; restore old content of the clipboard

   return selection

}
