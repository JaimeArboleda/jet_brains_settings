#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win
; < Left
; > Right

; Action
; Capslock is remapped to control. AltGr + Space and AltGr + S is remapped to ESC
CapsLock::Ctrl
>!CapsLock::CapsLock     ; AltGr+CapsLock -> Enable/Disable Caps Lock
>!Space:: Send {Esc}
>!s:: Send {Esc}

; Accents
>!a:: Send {Asc 0225}    ; AltGr+a -> á
>!+a:: Send {Asc 0193}  ; Shift+AltGr+a -> Á
>!e:: Send {Asc 0233}    ; AltGr+e -> é
>!+e:: Send {Asc 0201}  ; Shift+AltGr+e -> É
>!i:: Send {Asc 0237}    ; AltGr+i -> í
>!+i:: Send {Asc 0205}  ; Shift+(RightAlt+i -> Í
>!o:: Send {Asc 0243}    ; AltGr+o -> ó
>!+o:: Send {Asc 0211}  ; Shift+AltGr+o -> Ó
>!u:: Send {Asc 0250}    ; AltGr+u -> ú
>!+u:: Send {Asc 0218}  ; Shift+AltGr+u -> Ú
>!n:: Send {Asc 0241}    ; AltGr+n -> ñ
>!+n:: Send {Asc 0209}  ; Shift+AltGr+n -> Ñ

; Dieresis
^>!u:: Send {Asc 0252}    ; Ctrl+AltGr+u -> ü
^>!+u:: Send {Asc 0220}  ; Ctrl+Shift+AltGr+u -> Ü

; C Cedilla
>!c:: Send {Asc 0231}    ; AltGr+c -> ç
>!+c:: Send {Asc 0199}  ; Shift+AltGr+c -> Ç

; Symbols
>!/:: Send {Asc 0191}{Asc 63}{left 1}    ; Alt+/ -> ¿?
>!1:: Send {Asc 0161}{Asc 33}{left 1}    ; Alt+1 -> ¡!