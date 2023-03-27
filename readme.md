# My IDE configuration

This project holds my configuration for PyCharm with IdeaVIM.

I use Hotkeys to remap CapsLock to Control and to use the keyboard with US layout and having accents with Alt Right (I am from Spain). To achieve it, copy `keyboard.ahk` to `C:\Users\jaime\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` so that is executed at startup.

The .ideavimrc file in this repository contains 

I use a VIM emulator, Ideavim. I prefer this over pure neovim or neovim integration because I feel like it is more stable (although it has fewer features). Anyway, some of the more advanced features of VIM do not make too much sense in the context of a powerful IDE and its own features. At least, in my opinion. 

After a couple of years of using VIM emulation, I have realized that I am more productive using key shortcuts and VIM in general when I am just editing code or navigating in my codebase. In those cases, the task at hand is often straightforward and I value the speed that VIM provides. However, when I am doing a other tasks, like dealing with git, debugging or running commands in the terminal, I don't care if I am using the mouse (and it makes the configuration and the amount of memory needed easier as I don't need to deal with so many shortcuts and keybindings).

Other example where I don't find very useful to use shortcuts is for resizing windows. I just use the mouse for that. I use only vertical splits horizontal splits tend to be too small for me). And no more than two splits. So having a command to switch between splits is the only useful one. 

So my commands are divided broadly in two categories: navigation and editing. 

Plugins that I use besides IdeaVIM: 
* Rust
* BlackConnect (to format Python code with black)
* Ruff (to format Python code with ruff; it complements BlackConnect)

In the case of the formatting plugins, I have set up the format on save, so I don't need to learn keybindings for that. 

Tip: `:actionlist` show all actions available in Intellij.

## Basic VIM 

My changes
* `j` and `k` are mapped to `gj` and `gk` to behave like `j` and `k` in soft wrap mode (note: in IdeaVIM this is by default, so there is no need to map them)
* `x` and `s` delete to the black hole register. I never find it useful to yank a single character
* `Y` yanks until the end of the line. I never find it useful to yank the whole line having `yy` available
* `,` is used as a secondary leader key (the primary one is whitespace)
* `U` is used to redo
* `H`
* `L`
* `K`
* `M`
* `X`
* `R`
* `S`
* `gp`
* `gP`
* `<c-y>` - scroll up one line
* `<c-e>` - scroll down one line
* `gq` - reformat text
* `gJ` - join lines

### Normal Mode

#### Movement

* `h` - move left
* `j` - move down
* `k` - move up
* `l` - move right
* `w` - move to the beginning of the next word
* `W` - move to the beginning of the next Word
* `e` - move to the end of the next word
* `E` - move to the end of the next Word
* `b` - move to the beginning of the previous word
* `B` - move to the beginning of the previous Word
* `ge` - move to the end of the previous word
* `gE` - move to the end of the previous Word
* `0` - move to the beginning of the line
* `$` - move to the end of the line
* `^` - move to the first non-blank character of the line
* `gg` - move to the beginning of the file
* `G` - move to the end of the file
* `f` - find next character in line
* `F` - find previous character in line
* `t` - find until next character in line
* `T` - find until previous character in line
* `;` - repeat last `f`, `F`, `t`, or `T` command
* `%` - move to matching character (default supported pairs: '()', '{}', '[]')
* `(` - move to the beginning of the previous sentence
* `)` - move to the beginning of the next sentence
* `{` - move to the beginning of the previous paragraph
* `}` - move to the beginning of the next paragraph
* `H` - move to the top of the screen (without scrolling)
* `M` - move to the middle of the screen (without scrolling)
* `L` - move to the bottom of the screen (without scrolling)
* `<c-d>` - move down half a screen (scrolling)
* `<c-u>` - move up half a screen (scrolling)
* `zz` - center the screen on the cursor
* `:n` - move to line n
* `g<` - jump to previous error


#### Editing
* `i` - insert before cursor
* `I` - insert at the beginning of the line
* `a` - insert (append) after the cursor
* `A` - insert (append) at the end of the line
* `o` - append (open) a new line below the current line
* `O` - append (open) a new line above the current line
* `r` - replace a single character
* `R` - enter replace mode
* `jk` - exit insert mode
* `J` - smart join line below to the current one 
* `s` - delete character and substitute text
* `c` - change (replace) text
* `cc` - change (replace) entire line
* `C` - change to the end of the line
* `.` - repeat last command
* `<` - shift text left
* `>` - shift text right
* `gu` - make text lowercase
* `gU` - make text uppercase
* `g~` - switch case of text
* `:e filename` - edit a file 

#### Clipboard
* `x` - delete current character
* `X` - delete previous character
* `d` - delete (cut) text
* `D` - delete (cut) to the end of the line
* `dd` - delete (cut) a line
* `y` - yank (copy) text
* `Y` - yank (copy) until the end of current line
* `yy` - yank (copy) the current line
* `p` - put (paste) the clipboard after cursor
* `P` - put (paste) before cursor
* `"ap` - put (paste) after cursor from register a
* `"ay` - yank (copy) to register a

#### Undo/Redo
* `u` - undo
* `U` - redo 

#### Search/Replace
* `/` - search for pattern
* `?` - search backward for pattern
* `n` - repeat search in same direction
* `N` - repeat search in opposite direction
* `*` - search for word under cursor
* `#` - search backward for word under cursor
* `g*` - search for word under cursor, but select only whole words
* `g#` - search backward for word under cursor, but select only whole words
* `:%s/old/new/g` - replace all occurrences of `old` with `new` in the entire file
* `:%s/old/new/gc` - replace all occurrences of `old` with `new` in the entire file with confirmations
* `,` - easymotion prefix: `,w` - jump to the next word, `,b` - jump to the previous word, `,f` find, `,F` find backwards...
* `s<target>` - jump to the next occurrence of `<target>`
* `S<target>` - jump to the previous occurrence of `<target>`


#### Text Objects
* `iw` - inner word
* `aw` - a word
* `is` - inner sentence
* `as` - a sentence
* `ip` - inner paragraph
* `ap` - a paragraph
* `i"` - inner double quotes
* `a"` - a double quotes
* `i'` - inner single quotes
* `a'` - a single quotes
* `i[` - inner square brackets
* `a[` - a square brackets
* `ii` - inner indented block
* `ai` - a indented block
* `i(` - inner parentheses
* `a(` - a parentheses
* `ae` - whole buffer
* `ia` - inner argument
* `aa` - a argument

#### Marks and Jumps
I don't use vim marks; I prefer IDE bookmarks because they persist across sessions.
* `'` - jump to the line of the last cursor position

### Insert Mode

### Visual Mode
* `v` - enter visual mode
* `V` - enter visual line mode
* `<C-v>` - enter visual block mode
* `gv` - reselect last visual selection
* `gV` - reselect last visual line selection
* `g<C-v>` - reselect last visual block selection
* `o` - move to other end of marked area
* `O` - move to other corner of block
* `>` - shift right
* `<` - shift left
* `y` - yank (copy) selection
* `d` - delete (cut) selection
* `c` - change (replace) selection
* `u` - lowercase selection
* `U` - uppercase selection

### Commands

## Navigation

`gt` - switch to the next tab
`gT` - switch to the previous tab
`gw` - switch to the next window
`gn` - like `n` (searches next occurrence) but it also visually selects it. It's more useful when you are in operator pending mode (like `d` or `y`) and you want to perform an operation in the next occurrence.

## Editing

### General

### Autocompletion

### Refactoring

### Windows management

`<C-n>` - Focus on NerdTree
`<C-t>` - Focus on Terminal
`Esc` - Focus on Editor (tip: Alt right + space sends a Escape key)
`<C-h>` - Hide windows (terminal, nerdtree...)

### NerdTree

`<C-e>` - Focus on NerdTree
`j` - Move down
`k` - Move up
`p` - Go to parent
`<C-n>` - Create file/directory
`<CR>` - Open file or directory

### Surround
Basic usage is: `ys` add surround, `cs` change surround, `ds` delete surround. For visual selections, use `S` instead of `ys`. 
* `ysiw"` - Surround word with double quotes
* `ysiw[` - Surround word with square brackets
* `ysiw(` - Surround word with parentheses
* `ysiw{` - Surround word with curly braces
* `ysiwt<tag>` - Surround word with tag
* `cs"'` - Change surrounding double quotes to single quotes
* `ds"` - Delete surrounding double quotes
* `S"` - Surround visual selection double quotes
* ...

### Multiple Cursors
It starts from a visual selection of a word, finding all words, or from a visual selection of a set of lines (it adds a line after the last line of the selection).
* `,ma` - Add cursor on the next occurrence of the word
* `,ms` - Skip cursor on the next occurrence of the word
* After completing the selection, click `v` to go out of visual mode

### Commentary
* `gc{motion}` - Comment out the text selected by motion

### Replace with register
* `:reg` - Show registers
* `"agr{motion}` - Replace the text selected by motion with the content of register `a`
* `gr{motion}` - Replace the text selected by motion with the content of unnamed register (without overwriting the unnamed register)

### Vim Exchange
* `cx{motion}` ... and then `cx{motion}` - Exchange the motions.
