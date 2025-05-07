# Data units

https://simple.wikipedia.org/wiki/Byte

A *byte* is a unit of measurement of the size of information on a computer or other electronic device. A single byte is de facto 8 bits. Bits are the smallest unit of storage on a computer, a single on/off value.

Early computers have used groupings of bits of sizes other then 8 as units of computation. They mostly used fewer bits for a byte, like 6. Eventually, everybody settled on 8 bits per byte, which is also unambiguously called an *octet*.

Bytes are usually units of size and capacity, while transfer speeds prefer to use bits (megabit per second, i.e. mb/s or Mb/s, mbs or Mbs).

Bytes should be represented by the capital letter `B`, and bits by a lower case `b`, but this isn ot always respected. `MB` should always mean megabyte, `10²`, and `MiB`, unfortunatelly, a mebybyte, `2¹⁰`, while `Mb` or `Mbit` means megabit. This introduces two chances to screw things up - (e.g. for mega prefix), first, when differentiating between megabytes (MB) and megabits (Mb), and also when differentiating between megabytes (MB) and mebibytes (MiB).

```
1 MB (megabyte)
  = 10²
  = 8,000,000        bits
  = 1,000,000        bytes
  =     8,000        Kbit (kilobits)
  =     7,812.5      Kibit (kibibits)
  =     1,000        KB (kilobytes)
  =       976.5625   KiB (kibibytes)
  =         1        MB (megabytes)
  =         0.953674 MiB (mebibytes)

1 MiB (mebibyte)
  = 2¹⁰
  = 8,388,608 bits
  = 1024 KiB
  = 1,048.576 KB
  = 1,048,576 bytes

1 Mbit (megabit)
  = 1,000,000 bits
  = 125,000 bytes
  = 1000 Kbit
  = 976.5625 Kibit
  = 125 KB
  = 122.0703 KiB
  = 0.125 MB
  = 0.953674 Mebibits
  = 0.119209 MiB

1 Mib (Mebibit)
  = 1,048,576 bits
  = 128 KiB
  = 0.125 MiB


2³² = 4 GiB = 4096 MiB = 4,194,304 KiB = 4,294,967,296 bytes
2⁴⁸ is 

2⁶⁴ = 16 EiB = 16,384 PiB = 16,777,216 TiB = 17,179,869,184 GiB
    = 17,592,186,044,416 MiB
    = 1.801440e+16 KiB
    = 1.844674e+19 bytes

2¹⁰  = kibi  KiB (kilo)
2²⁰  = mebi  MiB (mega)
2³⁰  = gibi  GiB (giga)
2⁴⁰  = pebi  PiB (peta)
2⁵⁰  = tebi  TiB (tera)
2⁶⁰  = exbi  EiB (exa)
2⁷⁰  = zebi  ZiB (zetta)
2⁸⁰  = yobi  YiB (yotta)
2⁹⁰  = rebi  RiB (ronna)
2¹⁰⁰ = quebi QiB (quetta)
```

## Decimal vs binary

ISO units use decimal number 10 for base and powers which are multiples of 3, or, in an alternative interpretation, the base is `1000` = `10³` and the powers are a sequence of integers, ℤ = {…, -2, -1, 0, 1, 2, …}
- 10³ = (10³)¹ = 1000¹
- 10⁶ = (10³)² = 1000²
- 10⁹ = (10³)³ = 1000³
- 10^12 = (10^3)^4 = 10^(3×4) = 10^12
- 10^15 = (10^3)^5 = 10^(3×5) = 10^15
- 10^18 = (10^3)^6 = 10^(3×6) = 10^(2×9)
- 10^21 = (10^3)^7 = 10^(3×7)
- 10^24 = (10^3)^8 = 10^(3×8) = 10^(4×6) = 10^(2×12)
- 10^27 = (10^3)^9
- 10^30 = (10^3)^10

On the 

## Names for large units

For large data, byte is often used with a binary prefix:

SI prefix  | Sym | base10 | base1000 | AltPrefix | SymB | base2
-----------|-----|--------|----------|-----------|------|-------
Kilobyte   | KB  | 10³    | 1000¹    | kibibyte  | KiB  | 2¹⁰
Megabyte   | MB  | 10⁶    | 1000²    | mebibyte  | MiB  | 2²⁰
Gigabyte   | GB  | 10⁹    | 1000³    | gibibyte  | GiB  | 2³⁰
Terabyte   | TB  | 10¹²   | 1000⁴    | tebibyte  | TiB  | 2⁴⁰
Petabyte   | PB  | 10¹⁵   | 1000⁵    | pebibyte  | PiB  | 2⁵⁰
Exabyte    | EB  | 10¹⁸   | 1000⁶    | exbibyte  | EiB  | 2⁶⁰
Zettabyte  | ZB  | 10²¹   | 1000⁷    | Zebibyte  | ZiB  | 2⁷⁰
Yottabyte  | YB  | 10²⁴   | 1000⁸    | Yobibyte  | YiB  | 2⁸⁰
Ronnabyte  | RB  | 10²⁷   | 1000⁹    | Robibyte  | RiB  | 2⁹⁰
Quettabyte | QB  | 10³⁰   | 1000¹⁰   | Quebibyte | QiB  | 2¹⁰⁰


## Unofficial units

These terms represent even larger but unofficial units:

pseudo unit  | psy | pow   | bin
-------------|-----|-------|--------
Saganbyte    | SB  | 2^110 | sagansan
Pijabyte     | PjB | 2^120 | pijbi
Alphabyte    | AB  | 2^130 | alphi
Pectrolbyte  | PcB | 2^140 | pecbi
Bolgerbyte   | BoB | 2^150 | bolbi
Sambobyte    | SaB | 2^160 | sambi
Quesabyte    | QB  | 2^170 | quesbi
Kinsabyte    | KiB | 2^180 | kinsabi
Rutherbyte   | RB  | 2^190 | ruthbi
Dubnibyte    | DB  | 2^200 | dubbi
Hassiubyte   | HaB | 2^210 | hassbi
Meitnerbyte  | MnB | 2^220 | meitbi
Darmstadbyte | DrB | 2^230 | darmstbi, hucklebee
Roentbyte    | RaB | 2^240 | roenbi
Sophobyte    | SoB | 2^250 | sophbi
Coperbyte    | CoB | 2^260 | cobi
Koentekbyte  | KoB | 2^270 | koenbi
Glossybyte   | GsB | 2^280 | glosbi
Snugbyte     | SuB | 2^290 | snubi
Grandbyte    | GrB | 2^299 | granbi
Doombyte     | DmB | 2^309 | doombee
Godbyte      | GdB | 2^319 | godbee
Superbyte    | SpB | 2^329 | sup
Googolbyte   | GgB | 2^339 | googlbee
