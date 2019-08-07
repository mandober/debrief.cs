# Keyboard shift states

Modifers keys:
* Control `ctrl`
  - Left Control
  - Right Control
* Shift `shift`
  - Left Shift
  - Right Shift
* Alt `alt`
  - Left Alt
  - GrAlt (right Alt, Alt Graphic) `GrAlt = Ctrl+Alt`
* App key (right only
* Windows key (left, right)
  - Left Win
  - Right Win
* CapsLock
* SGCaps (I've set CapsLock to SGCaps in `Keyboard Layout Creator`).
  - `SGCaps` (when CapsLock ON):
    - 2 additional shift states for specific keys
    - letters are capitalized as usual
    - non-letter specific keys: print greek and logical symbols


Microsoft Keyboard Layout Creator supports defining up to seven of these shift states (Shift, AltGr, Shift+AltGr, Ctrl, Shift+Ctrl, SGCaps, and Shift+SGCaps).


## AltGr
The right Alt key. The term "AltGr" comes from "Alt Graphic". The behavior of the AltGr key is always identical to pressing the Control + Alt key simultaneously. 

## AltGrCapsLock
This setting is analogous to CapsLock for the AltGr and AltGr+Shift shift states. It is used to determine whether AltGr+CapsLock is equal to AltGr+Shift. 

## CapsLock
This setting is used to determine whether the unshifted character+CAPS LOCK key is equal to the shifted character. Often, the shifted and unshifted characters on a key will be cased variants of each other, but this is not required.


## SGCaps
(from Keyboard Layout Creator)
Usually CAPSLOCK is associated with SHIFT.
When CAPSLOCK is ON:
- letters are typed uppercased (their alt value) as if SHIFT was depressed
- numeric keys are not affected, they do not print they alt value
- special keys are not affected
Set CapsLock to SGCAPS mode which disassociates CAPSLOCK and SHIFT.
Pressing the CAPSLOCK key defines an additional 2 shift states for specific keys. 
The "SG" in the name orginiates from the first keyboard layout to use the functionality, the Swiss German keyboard layout. 
You may use these additional shift states if you want to, but it will increase the complexity of your keyboard and anyone who is not used to this mechanism may find the keyboard confusing until they understand it. 
NOTE: You cannot mix the first Caps Lock CheckBox and the SGCaps shift state for a single keystroke. If both are selected, only the SGCAPS definition will be used.

