# Bluetooth standards

https://en.wikipedia.org/wiki/Bluetooth

## Specs

- 1998 Bluetooth 1.0 and 1.0B
- 2002 Bluetooth 1.1
- 2005 Bluetooth 1.2
- 2005 Bluetooth 2.0 + EDR
- 2007 Bluetooth 2.1 + EDR
- 2009 Bluetooth 3.0 + HS
- 2010 Bluetooth 4.0
- 2013 Bluetooth 4.1
- 2014 Bluetooth 4.2
- 2016 Bluetooth 5.0
- 2019 Bluetooth 5.1
- 2019 Bluetooth 5.2
- 2021 Bluetooth 5.3
- 2023 Bluetooth 5.4
- 2024 Bluetooth 6.0

## Terms

- Bluetooth Special Interest Group (SIG)
- Bluetooth Core Specification Working Group (CSWG)
- Bluetooth Core Specification (BCS)
- Core Specification Addendum (CSA)
- Core Specification Supplements (CSS)
- Received Signal Strength Indicator (RSSI)
- Adaptive Frequency-Hopping Spread Spectrum (AFH)
- Extended Synchronous Connections (eSCO)
- Host Controller Interface (HCI)
- Enhanced Data Rate (EDR)
- Extended Inquiry Response (EIR)
- Phase-Shift Keying Modulation (PSK)
- Secure Simple Pairing (SSP)
- Alternative MAC/PHY (AMP)
- Enhanced Retransmission Mode (ERTM)
- Streaming Mode (SM)
- The Logical Link Control and Adaptation Protocol (L2CAP)
- Unicast Connectionless Data
- Enhanced Power Control
- WiMedia Ultra-wideband (UWB)
- Bluetooth Low Energy (BLE)
- Bluetooth Smart
- Classic Bluetooth
- Bluetooth high speed
- Generic Attribute Profile (GATT)
- Security Manager (SM)
- Low Duty Cycle Directed Advertising
- Link Layer Privacy with Extended Scanner Filter Policies
- Bluetooth Low Energy Secure Connection with Data Packet Length Extension
- Internet Protocol Support Profile (IPSP)
- Data Packet Length Extension
- Slot Availability Mask (SAM)
- High Duty Cycle Non-Connectable Advertising
- LE Advertising Extensions
- LE Channel Selection Algorithm #2
- Higher Output Power
- Angle of Arrival (AoA)
- Angle of Departure (AoD)
- Advertising Channel Index
- Periodic Advertising Sync Transfer
- Enhanced Attribute Protocol (EATT)
- Attribute Protocol (ATT)
- LE Power Control
- LE Isochronous Channels
- BT LE Audio


## Specifications and features

The specifications were formalized by the *Bluetooth Special Interest Group (SIG)* and formally announced on 20 May 1998. It was established by Ericsson, IBM, Intel, Nokia and Toshiba, and later joined by many other companies.

All versions of the Bluetooth standards are backward-compatible with all earlier versions.

The *Bluetooth Core Specification Working Group (CSWG)* produces mainly 4 kinds of specifications:
- The Bluetooth Core Specification (BCS), typically released every few years
- Core Specification Addendum (CSA)
- Core Specification Supplements (CSS) released more frequently than Addenda
- Errata - available with a Bluetooth SIG account

## Bluetooth 1.0 and 1.0B (1998)
- Products were not interoperable.
- Anonymity impossible, preventing certain services from using BT environments

## Bluetooth 1.1 (2002)
- Ratified as IEEE Standard 802.15.1-2002
- Many errors found in the v1.0B specifications were fixed.
- Added possibility of non-encrypted channels
- *Received signal strength indicator (RSSI)*

## Bluetooth 1.2 (2005)
- Faster connection and discovery
- *Adaptive frequency-hopping spread spectrum (AFH)*, which improves resistance to radio frequency interference by avoiding the use of crowded frequencies in the hopping sequence
- Higher transmission speeds in practice than in v1.1, up to 721 kbit/s
- *Extended Synchronous Connections (eSCO)*, which improve voice quality of audio links by allowing retransmissions of corrupted packets, and may optionally increase audio latency to provide better concurrent data transfer
- *Host Controller Interface (HCI)* operation with three-wire UART
- Ratified as IEEE Standard 802.15.1-2005
- Introduced flow control and retransmission modes for *L2CAP*

## Bluetooth 2.0 + EDR (2005)
This version of the Bluetooth Core Specification was released before 2005. 

The main difference is the introduction of an *Enhanced Data Rate (EDR)* for faster data transfer. The data rate of *EDR is 3 Mbit/s*, although the maximum data transfer rate (allowing for inter-packet time and acknowledgements) is 2.1 Mbit/s.

EDR uses a combination of *GFSK* and phase-shift keying modulation (PSK) with two variants, *π/4-DQPSK* and *8-DPSK*. 

EDR can provide a lower power consumption through a reduced duty cycle.

The specification is published as Bluetooth v2.0 + EDR, which implies that EDR is an optional feature. 

Aside from EDR, the v2.0 specification contains other minor improvements, and products may claim compliance to "Bluetooth v2.0" without supporting the higher data rate. 

At least one commercial device states "Bluetooth v2.0 without EDR" on its data sheet.

## Bluetooth 2.1 + EDR (2007)

Bluetooth Core Specification version 2.1 + EDR was adopted by the Bluetooth SIG on 26 July 2007.

The headline feature of v2.1 is *secure simple pairing (SSP)*: this improves the pairing experience for Bluetooth devices, while increasing the use and strength of security.

Version 2.1 allows various other improvements, including *extended inquiry response (EIR)*, which provides more information during the inquiry procedure to allow better filtering of devices before connection; and sniff subrating, which reduces the power consumption in low-power mode.

## Bluetooth 3.0 + HS (2009)

Version 3.0 + HS of the Bluetooth Core Specification was adopted by the Bluetooth SIG on 21 April 2009. 

Bluetooth v3.0 + HS provides theoretical data transfer speeds of up to 24 Mbit/s, though not over the Bluetooth link itself. Instead, the Bluetooth link is used for negotiation and establishment, and the high data rate traffic is carried over a colocated 802.11 link.

The main new feature is *Alternative MAC/PHY (AMP)*, the addition of 802.11 as a high-speed transport. The high-speed part of the specification is not mandatory, and hence only devices that display the "+HS" logo actually support Bluetooth over 802.11 high-speed data transfer. 

A Bluetooth v3.0 device without the "+HS" suffix is only required to support features introduced in Core Specification version 3.0 or earlier Core Specification Addendum 1.

### L2CAP Enhanced modes
*Enhanced Retransmission Mode (ERTM)* implements reliable L2CAP channel, while *Streaming Mode (SM)* implements unreliable channel with no retransmission or flow control. Introduced in Core Specification Addendum 1.

### Alternative MAC/PHY
Enables the use of alternative MAC and PHYs for transporting Bluetooth profile data. The Bluetooth radio is still used for device discovery, initial connection and profile configuration. However, when large quantities of data must be sent, the high-speed alternative MAC PHY 802.11 (typically associated with Wi-Fi) transports the data. This means that Bluetooth uses proven low power connection models when the system is idle, and the faster radio when it must send large quantities of data. AMP links require enhanced L2CAP modes.

### Unicast Connectionless Data
Permits sending service data without establishing an explicit L2CAP channel. It is intended for use by applications that require low latency between user action and reconnection/transmission of data. This is only appropriate for small amounts of data.

### Enhanced Power Control
Updates the power control feature to remove the open loop power control, and also to clarify ambiguities in power control introduced by the new modulation schemes added for EDR.

Enhanced power control removes the ambiguities by specifying the behavior that is expected. The feature also adds closed loop power control, meaning RSSI filtering can start as the response is received. 

Additionally, a "go straight to maximum power" request has been introduced. This is expected to deal with the headset link loss issue typically observed when a user puts their phone into a pocket on the opposite side to the headset.

### Ultra-wideband
The high-speed (AMP) feature of Bluetooth v3.0 was originally intended for UWB, but the WiMedia Alliance, the body responsible for the flavor of UWB intended for Bluetooth, announced in March 2009 that it was disbanding, and ultimately UWB was omitted from the Core v3.0 specification.

On 16 March 2009, the WiMedia Alliance announced it was entering into technology transfer agreements for the *WiMedia Ultra-wideband (UWB)* specifications. WiMedia has transferred all current and future specifications, including work on future high-speed and power-optimized implementations, to the Bluetooth Special Interest Group (SIG), Wireless USB Promoter Group and the USB Implementers Forum. After successful completion of the technology transfer, marketing, and related administrative items, the WiMedia Alliance ceased operations.

In October 2009, the Bluetooth Special Interest Group suspended development of UWB as part of the alternative MAC/PHY, Bluetooth v3.0 + HS solution. A small, but significant, number of former WiMedia members had not and would not sign up to the necessary agreements for the IP transfer. As of 2009, the Bluetooth SIG was in the process of evaluating other options for its longer-term roadmap.

## Bluetooth 4.0 (2010)

Main article: Bluetooth Low Energy

The Bluetooth SIG completed the Bluetooth Core Specification version 4.0 (called *Bluetooth Smart*) and has been adopted as of 30 June 2010.

It includes *Classic Bluetooth*, *Bluetooth high speed* and *Bluetooth Low Energy (BLE)* protocols. Bluetooth high speed is based on Wi-Fi, and Classic Bluetooth consists of legacy Bluetooth protocols.

Bluetooth Low Energy, previously known as Wibree, is a subset of Bluetooth v4.0 with an entirely new protocol stack for rapid build-up of simple links. 

As an alternative to the Bluetooth standard protocols that were introduced in Bluetooth v1.0 to v3.0, it is aimed at very low power applications powered by a coin cell. 

Chip designs allow for two types of implementation, dual-mode, single-mode and enhanced past versions. The provisional names Wibree and Bluetooth ULP (Ultra Low Power) were abandoned and the BLE name was used for a while. 

In late 2011, new logos "Bluetooth Smart Ready" for hosts and "Bluetooth Smart" for sensors were introduced as the general-public face of BLE.

Compared to Classic Bluetooth, *Bluetooth Low Energy* is intended to provide considerably reduced power consumption and cost while maintaining a similar communication range. In terms of lengthening the battery life of Bluetooth devices, BLE represents a significant progression.

In a *single-mode implementation*, only the low energy protocol stack is implemented. Dialog Semiconductor, STMicroelectronics, AMICCOM, CSR, Nordic Semiconductor and Texas Instruments have released single mode Bluetooth Low Energy solutions.

In a *dual-mode implementation*, Bluetooth Smart functionality is integrated into an existing Classic Bluetooth controller. As of March 2011, the following semiconductor companies have announced the availability of chips meeting the standard: Qualcomm Atheros, CSR, Broadcom and Texas Instruments. 

The compliant architecture shares all of Classic Bluetooth's existing radio and functionality resulting in a negligible cost increase compared to Classic Bluetooth.

Cost-reduced single-mode chips, which enable highly integrated and compact devices, feature a lightweight Link Layer providing ultra-low power idle mode operation, simple device discovery, and reliable point-to-multipoint data transfer with advanced power-save and secure encrypted connections at the lowest possible cost.

General improvements in version 4.0 include the changes necessary to facilitate BLE modes, as well the *Generic Attribute Profile (GATT)* and *Security Manager (SM)* services with AES Encryption.

Core Specification Addendum 2 was unveiled in December 2011; it contains improvements to the audio *Host Controller Interface* and to the *High Speed (802.11) Protocol Adaptation Layer*.

Core Specification Addendum 3 revision 2 has an adoption date of 24 July 2012.

Core Specification Addendum 4 has an adoption date of 12 February 2013.

## Bluetooth 4.1 (2013)

The Bluetooth SIG announced formal adoption of the Bluetooth v4.1 specification on 4 December 2013. 

This specification is an incremental software update to Bluetooth Specification v4.0, and not a hardware update. 

The update incorporates Bluetooth Core Specification Addenda (CSA 1, 2, 3 & 4) and adds new features that improve consumer usability. 

These include increased co-existence support for LTE, bulk data exchange rates-and aid developer innovation by allowing devices to support multiple roles simultaneously.

New features of this specification include:
- Mobile wireless service coexistence signaling
- Train nudging and generalized interlaced scanning
- Low Duty Cycle Directed Advertising
- L2CAP connection-oriented and dedicated channels with credit-based flow control
- Dual Mode and Topology
- LE Link Layer Topology
- 802.11n PAL
- Audio architecture updates for Wide Band Speech
- Fast data advertising interval
- Limited discovery time

Some features were already available in a Core Specification Addendum (CSA) before the release of v4.1.

## Bluetooth 4.2 (2014)

Released on 2 December 2014, it introduces features for the Internet of things.

The major areas of improvement are:
- *Bluetooth Low Energy Secure Connection with Data Packet Length Extension* to improve the cryptographic protocol
- *Link Layer Privacy with Extended Scanner Filter Policies* to improve data security
- *Internet Protocol Support Profile (IPSP)* version 6 ready for Bluetooth smart devices to support the Internet of things and home automation
- Older Bluetooth hardware may receive 4.2 features such as *Data Packet Length Extension* and improved privacy via firmware updates.

## Bluetooth 5 (2016)

The Bluetooth SIG released Bluetooth 5 on 6 December 2016.

Its new features are mainly focused on new Internet of Things technology.

Sony was the first to announce Bluetooth 5.0 support with its Xperia XZ Premium in Feb 2017 during the Mobile World Congress 2017.

The Samsung Galaxy S8 launched with Bluetooth 5 support in April 2017. In September 2017, the iPhone 8, 8 Plus and iPhone X launched with Bluetooth 5 support as well. Apple also integrated Bluetooth 5 in its new HomePod offering released on 9 February 2018.

Marketing drops the point number; so that it is just "Bluetooth 5" (unlike Bluetooth 4.0); the change is for the sake of "Simplifying our marketing, communicating user benefits more effectively and making it easier to signal significant technology updates to the market."

Bluetooth 5 provides, for BLE, options that can double the data rate (2 Mbit/s burst) at the expense of range, or provide up to four times the range at the expense of data rate. 

The increase in transmissions could be important for Internet of Things devices, where many nodes connect throughout a whole house. 

Bluetooth 5 increases capacity of connectionless services such as location-relevant navigation of low-energy Bluetooth connections.

The major areas of improvement are:
- Slot Availability Mask (SAM)
- 2 Mbit/s PHY for LE
- LE Long Range
- High Duty Cycle Non-Connectable Advertising
- LE Advertising Extensions
- LE Channel Selection Algorithm #2

Features added in CSA5 - integrated in v5.0:
- Higher Output Power

The following features were removed in this version of the specification:
- Park State

## Bluetooth 5.1 (2019)
The Bluetooth SIG presented Bluetooth 5.1 on 21 January 2019.

The major areas of improvement are:
- Angle of Arrival (AoA) and Angle of Departure (AoD) which are used for locating and tracking of devices
- Advertising Channel Index
- GATT caching

Minor Enhancements, batch 1:
- HCI support for debug keys in LE Secure Connections
- Sleep clock accuracy update mechanism
- ADI field in scan response data
- Interaction between QoS and Flow Specification
- Block Host channel classification for secondary advertising
- Allow the SID to appear in scan response reports
- Specify the behavior when rules are violated
- Periodic Advertising Sync Transfer

Features added in Core Specification Addendum (CSA) 6, integrated in v5.1:
- Models
- Mesh-based model hierarchy

Features removed in this version of the specification:
- Unit keys


## Bluetooth 5.2 (2019)

On 31 December 2019, the Bluetooth SIG published the Bluetooth Core Specification version 5.2.

The new specification adds new features:
- Enhanced Attribute Protocol (EATT), improved Attribute Protocol (ATT)
- LE Power Control
- LE Isochronous Channels
- LE Audio that is built on top of the new 5.2 features

BT LE Audio was announced in January 2020 at CES by the Bluetooth SIG. 

Compared to regular Bluetooth Audio, Bluetooth Low Energy Audio makes lower battery consumption possible and creates a standardized way of transmitting audio over BT LE. 

Bluetooth LE Audio also allows one-to-many and many-to-one transmission, allowing multiple receivers from one source or one receiver for multiple sources, known as *Auracast*.

It uses a new *LC3 codec*. BLE Audio will also add support for hearing aids. 

On 12 July 2022, the Bluetooth SIG announced the completion of Bluetooth LE Audio. The standard has a lower minimum latency claim of 20-30 ms vs Bluetooth Classic audio of 100-200 ms.

At IFA in August 2023 Samsung announced support for Auracast through a software update for their Galaxy Buds2 Pro and two of their TV's. 

In October users started getting updates for the earbuds.

## Bluetooth 5.3 (2021)
The Bluetooth SIG published the Bluetooth Core Specification version 5.3 on 13 July 2021.

The feature enhancements of Bluetooth 5.3 are:
- Connection Subrating
- Periodic Advertisement Interval
- Channel Classification Enhancement
- Encryption key size control enhancements

The following features were removed in this version of the specification:
- Alternate MAC and PHY (AMP) Extension

## Bluetooth 5.4 (2023)

The Bluetooth SIG released the Bluetooth Core Specification version 5.4 on 7 February 2023.

This new version adds the following features:
- Periodic Advertising with Responses (PAwR)
- Encrypted Advertising Data
- LE GATT Security Levels Characteristic
- Advertising Coding Selection

## Bluetooth 6.0 (2024)

The Bluetooth SIG released 
Bluetooth Core Specification 
version 6.0 on 27 August 2024

This version adds the following features:
- Bluetooth Channel Sounding
- Decision-based advertising filtering
- Monitoring advertisers
- ISOAL enhancement
- LL extended feature set
- Frame space update
