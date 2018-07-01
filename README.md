# AutoHotKeyScripts

A Set of AutoHotKey scripts to make a programmer's life easier.

### Why Use `Ctrl+Alt` and `Ctrl+Shift+Alt` with `Arrow Keys`?
Because I constantly use `Shift+Arrows` to select text, and `Ctrl` as a modifier to select words in the text. So I decided to expand on that functionality with `Alt` being the AutoHotKey trigger.

### Download [AutoHotKey][AutoHotKey]

## List of Scripts
* [Go To End of Line](#go-to-end-of-line)
* [Go To Beginning of Line](#go-to-beginning-of-line)
* [Select Line To The Right of Cursor](#select-line-to-the-right-of-cursor)
* [Select Line To The Left of Cursor](#select-line-to-the-left-of-cursor)
* [Select To The End From Cursor](#select-to-the-end-from-cursor)
* [Select To The Beginning From Cursor](#select-to-the-beginning-from-cursor)
* [Delete Word](#delete-word)
* [Wrap Text in Quotes](#wrap-text-in-quotes)
* [Page Down](#page-down)
* [Page Up](#page-up)
* [Search Anything](#search-anything)
* [Save Highlighted Text](#save-highlighted-text)

## Scripts
### Go To End Of Line
* Original Key:
  * End
* After Script:
  * Ctrl+Alt+Right

![Go To End of Line Gif][1]

### Go To Beginning of Line
* Original Key:
  * Home
* After Script:
  * Ctrl+Alt+Left

![Go To End of Line Gif][2]

### Select Line To The Right Of Cursor
* Original Keys:
  * Shift+End
* After Script:
  * Ctrl+Shift+Alt+Right

![Select Line To The Right of Cursor Gif][3]

### Select Line To The Left Of Cursor
* Original Keys:
  * Shift+Home
* After Script:
  * Ctrl+Shift+Alt+Left

![Select Line To The Left of Cursor Gif][4]

### Select To The End From Cursor
* Original Keys:
  * Shift+End
* After Script:
  * Ctrl+Shift+Alt+Down

![Select To The End From Cursor Gif][5]

### Select To The Beginning From Cursor
* Original Keys:
  * Shift+Home
* After Script:
  * Ctrl+Shift+Alt+Up

![Select To The Beginning From Cursor Gif][6]

### Delete Word
* Original Key:
  * Ctrl+Delete
* After Script:
  * Alt+Backspace

![Delete Word Gif][10]

### Wrap Text in Quotes:
* Use:
  * Select Text, then Ctrl+Shift+'

![Wrap Text in Quotes Gif][11]

### Page Down
* Original Key:
  * Page Down
* After Script:
  * Ctrl+Down

![Page Down Gif][8]

### Page Up
* Original Key:
  * Page Up
* After Script:
  * Ctrl+Up

![Page Up Gif][9]

### Search Anything
* Original Steps:
  1. Copy Text
  2. Go to Google
  3. Paste Text
  4. Search
* After Script:
  * Ctrl+Shift+Alt+A

Inspired by [lifehacker][lifehacker]

![Search Anything Gif][7]

### Save Highlighted Text
##### What it does:
Saves the highlited text to a file, and it saves it with markdown syntax to a .md file

Example:
##### TODAY'S HIGHLIGHTED DEALS
* Steam
* *12:35 AM Sunday, July 1, 2018*

```Markdown
##### TODAY'S HIGHLIGHTED DEALS
* Steam
* *12:35 AM Sunday, July 1, 2018*
```
The header cotains the highlighted text, then the name of the window where it got it from, then a timestamp.

- [x] Can get Active URLs from Web browser
  * Support for Chrome, Edge, IE, Opera, and Firefox
- [x] Attach timestamp to information
- [x] All the highlights of the day are saved on one file
  * A new file is generated every day

##### Installation Steps
After downloading the script, modify `HighlightsDirectory` to point to the folder that will contain your highlights. Then run the .ahk script.

##### TL;DR
* Original Steps:
  1. Too Many
* After Script:
  1. Ctrl+Shift+,

![Save Highlighted Text Gif][12]

<!-- Image Paths -->
[1]: media/GoToEndOfLine.gif
[2]: media/GoToBegginingOfLine.gif
[3]: media/SelectLineToTheRightOfCursor.gif
[4]: media/SelectLineToTheLeftOfCursor.gif
[5]: media/SelectToTheEndFromCursor.gif
[6]: media/SelectToTheBeginningFromCursor.gif
[7]: media/SearchAnything.gif
[8]: media/PageDown.gif
[9]: media/PageUp.gif
[10]: media/DeleteWord.gif
[11]: media/wrapTextInQuotes.gif
[12]: media/saveHighlightedText.gif

[lifehacker]: https://lifehacker.com/5598693/the-best-time-saving-autohotkey-tricks-you-should-be-using
[AutoHotKey]: https://autohotkey.com/download/
