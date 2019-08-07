# Modifier Keys

Hack MSKLC to enable remapping CAPSLOCK:
https://forum.colemak.com/topic/870-hacked-msklc-to-enable-remapping-capslock/




## Modifiers
(from MSKLC, `kbd.c` file)

All keyboards have modifier keys (or shift keys in broader sense) which are used to alter the behaviour of (some of the other) keys.

These modifier keys are usually:
* Shift  (left and/or right Shift key)
* Ctrl   (left and/or right Ctrl key)
* Alt    (left and/or right Alt key)
* AltGr  (right Alt key only)

NOTE:
- All keyboards use the Shift key.
- All keyboards use a Ctrl key to generate ASCII control characters.
- All keyboards with a number pad use the Alt key and the NumPad to
  generate characters by number.
- Keyboards using AltGr as a Modifier Key 
  usually translate the Virtual ScanCode to 
  Virtual Keys `VK_CTRL + VK_ALT` at input time: 
  the Modifier tables should be written to treat Ctrl+Alt 
  as a valid shifter key combination in these cases.


By holding down 0 or more of these Modifier keys, a "shift state" is obtained : the shift state may affect the translation of Virtual Scancodes to Virtual Keys and/or the translation of Virtuals Key to Characters.


## EXAMPLES

Each key on a particular keyboard may be marked with up to 5 different characters in 5 different positions (position 1, abbr. p1, is unshifted state):

```
  .-------.
 /|       |\
: | 2   4 | :
| |       | |
| |       | |
| | 1   3 | |
| |_______| |
| /       \ |
|/    5    \|
'-----------'
```


## Invisible Key
A key may also be able to generate a character that is not marked on it: these are ASCII Control chars, lower-case letters and/or invisible keys.

An example of an "Invisible Key": the German M24 keyboard 2 should produce the `|` character when ALT SHIFT is is held down while the `<` key is pressed. The keyboard had 4 other invisible characters. France, Italy and Spain also support invisible characters on the M24 Keyboard 2 with ALT SHIFT depressed.


The *keyboard table* must list the keys that contribute to it's shift state, and indicate which combinations are valid.

This is done with:
- `aCharModifiers[]` convert combinations of Modifier Keys to Bitmasks; and
- `aModification[]` convert Modifier Bitmasks to enumerated Modifications


### Example of valid and invalid modifier key combinations

The US English keyboard has 3 Modifier keys:
- Shift (left or right)
- Ctrl (left or right)
- Alt (left or right)

The only valid combinations of these Modifier Keys are:
- none pressed      : Character at position 1 on the key.
- Shift             : Character at position 2 on the key.
- Ctrl              : ASCII Control characters
- Shift + Ctrl      : ASCII Control characters
- Alt               : Character-by-number on the numpad

The invalid combinations (that do not generate any characters):
- Shift + Alt
- Alt + Ctrl
- Shift + Alt + Ctrl


Something (???) :
-----------------

   Modifier keys              Character produced
   -------------------------  ------------------
0  No shifter key depressed   position 1
1  Shift key is depressed     position 2
2  AltGr (r.h. Alt) depressed position 4 or 5 (whichever is marked)


 However, note that 3 shifter keys (SHIFT, can be combined in a
 characters, depending on the Keyboards
 Consider the following keyboards:

   .-------.            STRANGE KBD         PECULIAR KBD
  /|       |\           ==================  ==================
 : | 2   4 | :    1   -
 | |       | |    2   - SHIFT               SHIFT
 | |       | |    3   - MENU                MENU
 | | 1   3 | |    4   - SHIFT + MENU        SHIFT + MENU
 | |_______| |    5   -    no such keys     CTRL  + MENU
 | /       \ |
 |/    5    \|
 `-----------'
 Both STRANGE and PECULIAR keyboards could have aVkToBits[] =
 { VK_SHIFT  , KBDSHIFT }, // 0x01
 { VK_CONTROL, KBDCTRL  }, // 0x02
 { VK_MENU   , KBDALT   }, // 0x04
 { 0,          0        }

 The STRANGE keyboard has 4 distinct shift states, while the PECULIAR kbd
 has 5.  However, note that 3 shifter bits can be combined in a
 total of 2^3 == 8 ways.  Each such combination must be related to one (or
 none) of the enumerated shift states.
 Each shifter key combination can be represented by three binary bits:
Bit 0  is set if VK_SHIFT is down
Bit 1  is set if VK_CONTROL is down
Bit 2  is set if VK_MENU is down

 Example: If the STRANGE keyboard generates no characters in combination
 when just the ALT key is held down, nor when the SHIFT, CTRL and ALT keys
 are all held down, then the tables might look like this:

                              VK_MENU,
                      VK_CTRL,                    0
  };
  aModification[] = {
      0,            //   0       0       0     = 000  <none>
      1,            //   0       0       1     = 001  SHIFT
      SHFT_INVALID, //   0       1       0     = 010  ALT
      2,            //   0       1       1     = 011  SHIFT ALT
      3,            //   1       0       0     = 100  CTRL
      4,            //   1       0       1     = 101  SHIFT CTRL
      5,            //   1       1       0     = 110  CTRL ALT
      SHFT_INVALID  //   1       1       1     = 111  SHIFT CTRL ALT
  };


\***************************************************************************/

/***************************************************************************\
 VK_TO_BIT - associate a Virtual Key with a Modifier bitmask.

 Vk        - the Virtual key (eg: VK_SHIFT, VK_RMENU, VK_CONTROL etc.)
           Special Values:
              0        null terminator
 ModBits   - a combination of KBDALT, KBDCTRL, KBDSHIFT and kbd-specific bits
           Any kbd-specific shift bits must be the lowest-order bits other
           than KBDSHIFT, KBDCTRL and KBDALT (0, 1 & 2)

 Those languages that use AltGr (VK_RMENU) to shift keys convert it to
 CTRL+ALT with the KBDSPECIAL bit in the ausVK[] entry for VK_RMENU
 and by having an entry in aVkToPfnOem[] to simulate the right Vk sequence.

\***************************************************************************/
typedef struct {
    BYTE Vk;
    BYTE ModBits;
} VK_TO_BIT, *KBD_LONG_POINTER PVK_TO_BIT;

/***************************************************************************\
 pModNumber  - a table to map shift bits to enumerated shift states

 Table attributes: Ordered table

 Maps all possible shifter key combinations to an enumerated shift state.
 The size of the table depends on the value of the highest order bit used
 in aCharModifiers[*].ModBits

 Special values for aModification[*]
 SHFT_INVALID - no characters produced with this shift state.
LATER: (ianja) no SHFT_CTRL - control characters encoded in tables like others
 SHFT_CTRL    - standard control character production (all keyboards must
                be able to produce CTRL-C == 0x0003 etc.)
 Other        - enumerated shift state (not less than 0)

 This table is indexed by the Modifier Bits to obtain an Modification Number.

                      CONTROL MENU SHIFT

  aModification[] = {
      0,            //   0     0     0     = 000  <none>
      1,            //   0     0     1     = 001  SHIFT
      SHFT_INVALID, //   0     1     0     = 010  ALT
      2,            //   0     1     1     = 011  SHIFT ALT
      3,            //   1     0     0     = 100  CTRL
      4,            //   1     0     1     = 101  SHIFT CTRL
      5,            //   1     1     0     = 110  CTRL ALT
      SHFT_INVALID  //   1     1     1     = 111  SHIFT CTRL ALT
  };

\***************************************************************************/

