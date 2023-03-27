# My IDE configuration

This project holds my configuration for PyCharm with IdeaVIM.

I use Hotkeys to remap CapsLock to Control and to use the keyboard with US layout and having accents with Alt Right (I am from Spain). To achieve it, copy `keyboard.ahk` to `C:\Users\jaime\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` so that is executed at startup.

The .ideavimrc file in this repository contains 

I use a VIM emulator, Ideavim. I prefer this over pure neovim or neovim integration because I feel like it is more stable (although it has fewer features). Anyway, some of the more advanced features of VIM do not make too much sense in the context of a powerful IDE and its own features. At least, in my opinion. 

After a couple of years of using VIM emulation, I have realized that I am more productive using key shortcuts and VIM in general when I am just editing code or navigating in my codebase. In those cases, the task at hand is often straightforward and I value the speed that VIM provides. However, when I am doing a other tasks, like dealing with git, debugging or running commands in the terminal, I don't care if I am using the mouse (and it makes the configuration and the amount of memory needed easier as I don't need to deal with so many shortcuts and keybindings).

So my commands are divided broadly in two categories: navigation and editing. 

## Basic VIM 

My changes
* `j` and `k` are mapped to `gj` and `gk` to behave like `j` and `k` in soft wrap mode.
* `x` and `s` delete to the black hole register. I never find it useful to yank a single character. 
* `Y` yanks until the end of the line. I never find it useful to yank the whole line having `yy` available.
* `,` is used as a secondary leader key (the primary one is whitespace).
* `H`
* `L`
* `K`
* `M`
* `X`
* `R`
* `S`
* `gp`
* `gP`

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

#### Undo/Redo
* `u` - undo
* `U` - redo 

#### Text Objects

#### Marks


### Insert Mode

### Visual Mode

### Commands

## Navigation

`gn` - like `n` (searches next occurrence) but it also visually selects it. It's more useful when you are in operator pending mode (like `d` or `y`) and you want to perform an operation in the next occurrence.

## Editing

### General

### Autocompletion

### Refactoring