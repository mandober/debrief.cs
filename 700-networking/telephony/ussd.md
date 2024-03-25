# USSD

https://en.wikipedia.org/wiki/Unstructured_Supplementary_Service_Data

**Unstructured Supplementary Service Data (USSD)**, aka quick or feature codes, is a communications protocol used by GSM cellular telephones to communicate with the mobile network operator's computers.

USSD can be used for WAP browsing, prepaid callback service, mobile-money services, location-based content services, menu-based information services, and as part of configuring the phone on the network.

USSD messages are up to 182 alphanumeric characters long. Unlike SMS messages, USSD messages create a real-time connection during a USSD session. The connection remains open, allowing a two-way exchange of a sequence of data. This makes USSD more responsive than services that use SMS.

When a user sends a message to the phone company network, it is received by a computer dedicated to USSD. The computer's response is sent back to the phone, generally in a basic format that can easily be seen on the phone display. Messages sent over USSD are not defined by any standardization body, so each network operator can implement whatever is most suitable for its customers.

USSD can be used to provide independent calling services such as a callback, enhance mobile marketing capabilities, interactive data services, to query the available balance, to deliver one-time passwords or PIN codes. Some operators use USSD to provide access to real-time updates from social-networking websites.

Most GSM phones have USSD capability. USSD is generally associated with real-time or instant messaging services. There is no store-and-forward capability, as is typical of other short-message protocols like SMS. In other words, an SMSC is not present in the processing path.

A typical USSD message starts with an asterisk, `*`, followed by digits that comprise commands or data. Groups of digits may be separated by additional asterisks. The message is terminated with a hash symbol, `#`.

## USSD mode

USSD mode
- Mobile-initiated
  - USSD/PULL or USSD/P2A
  - when the user dials a code
  - e.g. `*139#` from a GSM mobile handset
- Network-initiated
  - USSD/PUSH or USSD/A2P
  - when the user receives a push message from the network
  - primarily used for promotional services

Example USSD codes
- `*101#`
- `*139*1*1234567890#`

## Codes

The codes below are not USSD codes, but rather *MMI Supplementary Service codes*; they are standardized so they are the same on every GSM phone.

They are interpreted by the handset first before a corresponding command (not the code itself) is sent to the network.

These codes might not always work when using an AT interface; there are standard AT commands defined for each of these actions instead.

BS is the type of bearer service, some valid values are:
- 11 for voice
- 13 for fax
- 16 for SMS (only valid for barring)
- 25 for data
- <blank> for all above

`T` is number of seconds for the No Reply Condition Timer, default is 20 seconds if not specified.

https://en.wikipedia.org/wiki/Unstructured_Supplementary_Service_Data#Code_table

* What's the difference between USSD, MMI and SS codes?
https://berlin.ccc.de/~tobias/mmi-ussd-ss-codes-explained.html

* GSM/HSPA/LTE Features
http://www.arcxsites.shh.net/GsmFeatures.htm
