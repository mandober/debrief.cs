# Keyboard Glossary

<!-- TOC -->

- [101-key keyboard layout](#101-key-keyboard-layout)
- [102-key keyboard layout](#102-key-keyboard-layout)
- [Alt](#alt)
- [ALT](#alt)
- [AltGr](#altgr)
- [AltGrCapsLock](#altgrcapslock)
- [AutoCaps](#autocaps)
- [Base character](#base-character)
- [CapsLock](#capslock)
- [Code point](#code-point)
- [Complex scripts](#complex-scripts)
- [Composite character](#composite-character)
- [Ctrl](#ctrl)
- [CTRL](#ctrl)
- [DDK](#ddk)
- [Dead key](#dead-key)
- [European keyboard](#european-keyboard)
- [Fallback fonts](#fallback-fonts)
- [Font linking](#font-linking)
- [GDI](#gdi)
- [GDI+](#gdi)
- [Input Language](#input-language)
- [Keyboard layout](#keyboard-layout)
- [Keystroke](#keystroke)
- [LANGID](#langid)
- [LCID](#lcid)
- [Ligature](#ligature)
- [LRM](#lrm)
- [Regional and Language Options](#regional-and-language-options)
- [RLM](#rlm)
- [Scan code](#scan-code)
- [SGCaps](#sgcaps)
- [Shift](#shift)
- [SHIFT](#shift)
- [Shift state](#shift-state)
- [Supplementary characters](#supplementary-characters)
- [Surrogate characters](#surrogate-characters)
- [Surrogate codepoints](#surrogate-codepoints)
- [Surrogate pair](#surrogate-pair)
- [Unicode](#unicode)
- [Uniscribe](#uniscribe)
- [UTF-16](#utf-16)
- [Virtual key](#virtual-key)
- [VK_*](#vk_)
- [VK_MENU](#vk_menu)
- [VK_RETURN](#vk_return)

<!-- /TOC -->

## 101-key keyboard layout
Keyboards in the US and some other locations have 101 keys on them.
The scan codes for this layout are slightly different than the 102 key keyboard layout, and a key is missing. 

## 102-key keyboard layout
Keyboards in Europe and some other locations have 102 keys on them.
The scan codes for this layout are slightly different than the 101 key keyboard layout, and an extra key is present next to the left shift key. 

## Alt
The shift state invoked when an ALT key is pressed simultaneously with another key. You cannot assign code points to such a keystroke combination. 

## ALT
The key on the keyboard located on either side of the space bar. 

## AltGr
The right Alt key. The term "AltGr" comes from "Alt Graphic". The behavior of the AltGr key is always identical to pressing the Control + Alt key simultaneously. 

## AltGrCapsLock
This setting is analogous to CapsLock for the AltGr and AltGr+Shift shift states. It is used to determine whether AltGr+CapsLock is equal to AltGr+Shift. 

## AutoCaps
When the AutoCaps setting is enabled, the Microsoft Keyboard Layout Creator will automatically determine the CapsLock and AltGrCapsLock values, based on whether the unshifted and shifted characters are cased variants of each other.

## Base character
A term used with dead keys. The base character is the key typed after the dead key; the combination of the dead key and the base character outputs a composite character. A keyboard must designate which base characters go with a dead key, and what the output (composite character) should be. 

## CapsLock
This setting is used to determine whether the unshifted character+CAPS LOCK key is equal to the shifted character. Often, the shifted and unshifted characters on a key will be cased variants of each other, but this is not required.

## Code point
A numerical reference within an encoding. In Windows, this generally refers to the Unicode numerical value of a character. Microsoft Keyboard Layout Creator can accept Unicode code points as "U+####" or "\x####" values. 

## Complex scripts
scripts that require special processing to display and edit because the characters, or glyphs, are not laid out in a simple way. Examples of complex scripts include Thai, Arabic, and Tamil. 

## Composite character
A term used with dead keys. The composite character is the character which is output from the combination of a dead key and a base character. 

## Ctrl
The shift state invoked when a CTRL key is pressed simultaneously with another key. It is usually recommended to avoiding the Ctrl Shift State.

## CTRL
The abbreviation for the control key. The exact placement of this key varies, but is usually located to the left of the left ALT key, and to the right of the right ALT key when two CTRL keys are present. 

## DDK
The abbreviation for the Microsoft Device Driver Kit, recently renamed to WDK (Windows Driver Kit).

## Dead key
A mechanism where two consecutive keystrokes are mapped to a single UTF-16 code point. It can be useful when you need to use a diacritic combined with different characters. It is used traditionally on many European keyboards. The origin of the term "dead" is based on the fact that when the first keystroke is typed, no glyph is produced; it is only when the next character is typed that any text is displayed. 

## European keyboard
Generally, European style keyboards contain a slightly different key physical key layout, different scan codes, and a differently shaped RETURN/ENTER key. 

## Fallback fonts
Fonts that are used by the operating system to obtain glyphs when the originally chosen font does not contain these glyphs. The technologies used by Microsoft Keyboard Layout Creator to obtain fallback information are Uniscribe and GDI+. 

## Font linking
Technology used to display correct glyphs for a code point. Font linking brings together a number of fonts, such that if the language is not supported in the current font, it will be displayable from other fallback fonts. The glyph is displayed seamlessly, without input from the user.

## GDI
An acronym for Graphics Device Interface, a set of APIs that allow for display and rendering.

## GDI+
A managed successor to GDI that is used by Microsoft Keyboard Layout Creator.

## Input Language
The term used to identify the language of a keyboard on Windows.

## Keyboard layout
Defines the mapping between scan codes, virtual keys, and code points that are produced when a key is typed. The content of a keyboard layout will often vary depending on language and region.

## Keystroke
The event caused by pressing a single key on a keyboard.

## LANGID
Short for Language ID. A LANGID is a 16 bit value which is the combination of a primary and secondary language ID.

## LCID
Short for locale identifier. A locale identifier includes a language identifier, a sort identifer, and a reserved range.

## Ligature
In keyboard terms, a combination of more than one UTF-16 code point for a single keystroke. This is generally used when you want to input multiple code points with a single keystroke.

## LRM
Left to right marker. Used in bidirectional text to alter the behavior of the Unicode Bidi Algorithm (described in Unicode's UAX #9) by forcing a section of text to be treated as left-to-right when it may have been treated as right-to-left.

## Regional and Language Options
The applet in the Windows Control Panel through which a user can change their keyboard settings (as well as many other unrelated settings). In versions of Windows prior to XP, this applet has had other names, such as "Regional Options" and "Regional Settings".

## RLM
Right to left marker. Used in bidirectional text to alter the behavior of the Unicode Bidi Algorithm (described in Unicode's UAX #9) by forcing a section of text to be treated as right-to-left when it may have been treated as left-to-right.

## Scan code
The numeric value given to each physical key on a keyboard; the scan code is a hardware-dependent number that identifies the key. Scan codes have a fixed position on the physical keyboard. Changing them is not recommended.

## SGCaps
A mechanism used to extend a keyboard layout by treating the CAPS LOCK key as if it were a separate shift state.

## Shift
The shift state invoked when a shift key is pressed simultaneously with another key. When a keyboard layout is designed for a script that has case, it is common for the Shift state to contain capitalized variants of the letters found in the unshifted state.

## SHIFT
The name of the shift keys on a keyboard layout. The shift keys are usually located on the left and right side of the layout, one row above the spacebar, 

## Shift state
A means of extending the keyboard beyond the 40+ physical keys on a keyboard. Microsoft Keyboard Layout Creator supports defining up to seven of these shift states (Shift, AltGr, Shift+AltGr, Ctrl, Shift+Ctrl, SGCaps, and Shift+SGCaps).

## Supplementary characters
Unicode character not on the Basic Multilingual Plane.
These characters are in the range U+10000 - U+10FFFF.

## Surrogate characters
An inappropiate term intended to mean supplementary characters.

## Surrogate codepoints
Unicode code point in the range U+D800 through U+DFFF.
Reserved for use by UTF-16.

## Surrogate pair
A pair of surrogate code units (a high surrogate followed by a low surrogate) "stands in" for a supplementary code point in UTF-16.

## Unicode
Unicode provides a unique number for every character.
http://unicode.org/

## Uniscribe
A technology that defines is a set of APIs that allow a fine degree of control for processing complex scripts.

## UTF-16
Unicode Transformation Format 16 bit encoding form. 
This is the encoding form of Unicode primarily used on Windows. 
A key on Windows keyboard layout can maximally contain 4 UTF-16 code points.

## Virtual key
Virtual key (VK) is the code that is given by the Windows USER subsystem to represent a keystroke. It is mapped from a scan code by using the keyboard layout definition.

## VK_*
Constants in the Platform SDK header files to represent virtual keys.
e.g. VK_D for the D key, VK_A for the A key, etc.

## VK_MENU
The Platform SDK virtual key constant that represents the ALT key.
The origin of this term is the fact that the ALT key is primarily used for menu accelerators.

## VK_RETURN
The Platform SDK virtual key constant for the ENTER key.
