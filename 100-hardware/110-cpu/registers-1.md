# Registers

## General purpos registers

In x86_64 architecture, the word size is 64 bits (8 bytes). This controls many aspects of the platform including the size of the general purpose registers.


```
←──────────────⁶⁴─────────────→
           ←────────³²────────→
                    ←───¹⁶────→
                    ←─⁸──→←─⁸─→
RAX───────┬EAX──────┬───AX────┐
│         │         │ AH │ AL │
└─────────└─────────┴────┴────┘
⁶³       ³¹        ¹⁵    ⁷    ⁰   bits
```
