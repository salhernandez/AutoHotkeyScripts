# AutoHotKeyScripts

A Set of AutoHotKey scripts to make a programmer's life easier.

## Why Use `Ctrl+Alt` and `Ctrl+Shift+Alt` with `Arrow Keys`?
Because I constantly use `Shift+Arrows` to select text, and `Ctrl` as a modifier to select words in the text. So I decided to expand on that functionality with `Alt` being the AutoHotKey trigger.

Download [AutoHotKey][AutoHotKey]

- [AutoHotKeyScripts](#autohotkeyscripts)
  - [Why Use `Ctrl+Alt` and `Ctrl+Shift+Alt` with `Arrow Keys`?](#why-use-ctrlalt-and-ctrlshiftalt-with-arrow-keys)
    - [SurfacePenOverrides](#surfacepenoverrides)
      - [Undo (Ctrl + Z)](#undo-ctrl--z)
      - [Redo (Ctrl + y)](#redo-ctrl--z)
    - [CapsLockHero](#capslockhero)
      - [Move Cursor Up](#move-cursor-up)
      - [Move Cursor Down](#move-cursor-down-1)
      - [Move Cursor Left](#move-cursor-left)
      - [Move Cursor Right](#move-cursor-right)
      - [Cursor Left Click](#cursor-left-click)
      - [Cursor Right Click](#cursor-right-click)
      - [Up Arrow Action](#up-arrow-action)
      - [Down Arrow Action](#down-arrow-action)
      - [Left Arrow Action](#left-arrow-action)
      - [Right Arrow Action](#right-arrow-action)
      - [F11](#f11)
      - [F12](#f12)
      - [Show Focused Window](#show-focused-window)
      - [Minimize Focused Window](#minimize-focused-window)
      - [Restore/Maximize Focused Window](#restoremaximize-focused-window)
      - [Close Focused Window](#close-focused-window)
      - [Go to Previous Tab](#go-to-previous-tab)
      - [Go to Next Tab](#go-to-next-tab)
  - [Go To End Of Line](#h3-id%22go-to-end-of-line-410%22go-to-end-of-lineh3)
  - [Go To Beginning of Line](#h3-id%22go-to-beginning-of-line-410%22go-to-beginning-of-lineh3)
  - [Select Line To The Right Of Cursor](#h3-id%22select-line-to-the-right-of-cursor-410%22select-line-to-the-right-of-cursorh3)
  - [Select Line To The Left Of Cursor](#h3-id%22select-line-to-the-left-of-cursor-410%22select-line-to-the-left-of-cursorh3)
  - [Select To The End From Cursor](#h3-id%22select-to-the-end-from-cursor-410%22select-to-the-end-from-cursorh3)
  - [Select To The Beginning From Cursor](#h3-id%22select-to-the-beginning-from-cursor-410%22select-to-the-beginning-from-cursorh3)
  - [Delete Word](#h3-id%22delete-word-410%22delete-wordh3)
  - [Delete Character](#h3-id%22delete-character-410%22delete-characterh3)
  - [Wrap Text in Quotes:](#h3-id%22wrap-text-in-quotes-410%22wrap-text-in-quotesh3)
  - [Page Down](#h3-id%22page-down-410%22page-downh3)
  - [Page Up](#h3-id%22page-up-410%22page-uph3)
  - [Search Anything](#h3-id%22search-anything-410%22search-anythingh3)
  - [Save Highlighted Text](#h3-id%22save-highlighted-text-410%22save-highlighted-texth3)
        - [What it does:](#what-it-does)
        - [TODAY'S HIGHLIGHTED DEALS](#todays-highlighted-deals)
        - [Installation Steps](#installation-steps)
        - [TL;DR](#tldr)

  - [Go To End Of Line](#go-to-end-of-line)
  - [Go To Beginning of Line](#go-to-beginning-of-line)
  - [Select Line To The Right Of Cursor](#select-line-to-the-right-of-cursor)
  - [Select Line To The Left Of Cursor](#select-line-to-the-left-of-cursor)
  - [Select To The End From Cursor](#select-to-the-end-from-cursor)
  - [Select To The Beginning From Cursor](#select-to-the-beginning-from-cursor)
  - [Delete Word](#delete-word)
  - [Delete Character](#delete-character)
  - [Wrap Text in Quotes:](#wrap-text-in-quotes)
  - [Page Down](#page-down)
  - [Page Up](#page-up)
  - [Search Anything](#search-anything)
  - [Save Highlighted Text](#save-highlighted-text)
        - [What it does:](#what-it-does)
        - [TODAY'S HIGHLIGHTED DEALS](#todays-highlighted-deals)
        - [Installation Steps](#installation-steps)
        - [TL;DR](#tldr)

### SurfacePenOverrides
---
Make sure to enable Surface Pen overrides in 
Settings -> Devices -> Pen and Windows Ink -> Allow apps to override shortcut button behavior

#### Undo (Ctrl + Z)
* Original Action:
  * Ctrl + C
  * Hit undo icon on OneNote
* After Script:
  * Click eraser once

#### Redo (Ctrl + Y)
* Original Action:
  * Ctrl + C
  * Hit redo icon on OneNote
* After Script:
  * Click eraser twice

### CapsLockHero
Why Use Caps Lock as a modifier... because no one really uses it other than to write very angry comments online.

---

#### Move Cursor Down
* Original Action:
  * Mouse Down
* After Script:
  * Caps Lock (HOLD) + S
  
#### Move Cursor Up
* Original Action:
  * Mouse Up
* After Script:
  * Caps Lock (HOLD) + W

#### Move Cursor Down
* Original Action:
  * Mouse Down
* After Script:
  * Caps Lock (HOLD) + S

#### Move Cursor Left
* Original Action:
  * Mouse Left
* After Script:
  * Caps Lock (HOLD) + A

#### Move Cursor Right
* Original Action:
  * Mouse Right
* After Script:
  * Caps Lock (HOLD) + D

#### Cursor Left Click
* Original Action:
  * Left Click
* After Script:
  * Caps Lock (HOLD) + Q

#### Cursor Right Click
* Original Action:
  * Right Click
* After Script:
  * Caps Lock (HOLD) + E

![CapsLockHeroMouse][14]

#### Up Arrow Action
* Original Key:
  * Up Arrow
* After Script:
  * Caps Lock (HOLD) + I

#### Down Arrow Action
* Original Key:
  * Down Arrow
* After Script:
  * Caps Lock (HOLD) + K

#### Left Arrow Action
* Original Key:
  * Left Arrow
* After Script:
  * Caps Lock (HOLD) + J

#### Right Arrow Action
* Original Key:
  * Right Arrow
* After Script:
  * Caps Lock (HOLD) + L

![CapsLockHeroArrows][15]

#### F11
* Original Key:
  * F11
* After Script:
  * Caps Lock (HOLD) + U

#### F12
* Original Key:
  * F12
* After Script:
  * Caps Lock (HOLD) + O

#### Show Focused Window
* Original Key:
  * None
* After Script:
  * Caps Lock (HOLD) + N

![CapsLockHeroArrows][16]

#### Minimize Focused Window
* Original Action:
  * Click on Minimize Button
* After Script:
  * Caps Lock (HOLD) + P
  
#### Restore/Maximize Focused Window
* Original Action:
  * Click on Maximize Button
* After Script:
  * Caps Lock (HOLD) + [

#### Close Focused Window
* Original Action:
  * Click on Close Button
* After Script:
  * Caps Lock (HOLD) + ]

#### Go to Previous Tab
* Original Action:
  * Ctrl + Shift + Tab
* After Script:
  * Caps Lock (HOLD) + F

#### Go to Next Tab
* Original Action:
  * Ctrl + Tab
* After Script:
  * Caps Lock (HOLD) + G

### Go To End Of Line
---
* Original Key:
  * End
* After Script:
  * Ctrl+Alt+Right

![Go To End of Line Gif][1]

### Go To Beginning of Line
---
* Original Key:
  * Home
* After Script:
  * Ctrl+Alt+Left

![Go To End of Line Gif][2]

### Select Line To The Right Of Cursor
---
* Original Keys:
  * Shift+End
* After Script:
  * Ctrl+Shift+Alt+Right

![Select Line To The Right of Cursor Gif][3]

### Select Line To The Left Of Cursor
---
* Original Keys:
  * Shift+Home
* After Script:
  * Ctrl+Shift+Alt+Left

![Select Line To The Left of Cursor Gif][4]

### Select To The End From Cursor
---
* Original Keys:
  * Shift+End
* After Script:
  * Ctrl+Shift+Alt+Down

![Select To The End From Cursor Gif][5]

### Select To The Beginning From Cursor
---
* Original Keys:
  * Shift+Home
* After Script:
  * Ctrl+Shift+Alt+Up

![Select To The Beginning From Cursor Gif][6]

### Delete Word
---
* Original Key:
  * Ctrl+Delete
* After Script:
  * Ctrl+Shift+Backspace

![Delete Word Gif][10]

### Delete Character
---
* Original Key:
  * Delete
* After Script:
  * Shift+Backspace

![Delete Character Gif][13]

### Wrap Text in Quotes:
---
* Use:
  * Select Text, then Ctrl+Shift+'

![Wrap Text in Quotes Gif][11]

### Page Down
---
* Original Key:
  * Page Down
* After Script:
  * Ctrl+Down

![Page Down Gif][8]

### Page Up
---
* Original Key:
  * Page Up
* After Script:
  * Ctrl+Up

![Page Up Gif][9]

### Search Anything
---
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
---
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
Highlights will be located on the Desktop under a folder named "Highlights"
Uses source code from [md-page][md-page] to convert
markdown to html

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
[8]: media/pageDown.gif
[9]: media/pageUp.gif
[10]: media/DeleteWord.gif
[11]: media/wrapTextInQuotes.gif
[12]: media/saveHighlightedText.gif
[13]: media/deleteCharacter.gif
[14]: media/CapsLockHeroMouse.gif
[15]: media/CapsLockHeroArrows.gif
[16]: media/CapsLockHeroShowActiveWindow.gif

[lifehacker]: https://lifehacker.com/5598693/the-best-time-saving-autohotkey-tricks-you-should-be-using
[AutoHotKey]: https://autohotkey.com/download/
[md-page]: https://github.com/oscarmorrison/md-page
