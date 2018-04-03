; taken from https://autohotkey.com/board/topic/66882-putting-quotes-around-selected-text/

^+"::
  Send ^x
  ClipWait
  Clipboard="%Clipboard%"
  ClipWait
  Send ^v
Return
