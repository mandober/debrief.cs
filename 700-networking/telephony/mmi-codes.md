# GSM

* The difference between USSD, MMI and SS codes
https://berlin.ccc.de/~tobias/mmi-ussd-ss-codes-explained.html

- GSM codes
- USSD codes
- MMI codes


## MMI codes

Every code that you enter over the keypad on the phone which contains an asterisk (*) or a hash (#) characters is an MMI (Man-Machine Interface) code.

Even though most of these MMI codes look pretty similar, they fall into different groups with completely different actions: some are just used locally on the device, some are sent to the SIM, others are sent to the network.

### Types of MMI codes

### Supplementary Service (SS) codes

Those are the codes used to control, for example, call forwarding or number presentation.

With *21*123456789# <SEND> you would instruct your phone to ask the network to forward all your incoming calls to the number 123456789. But this code is not sent directly to the network. Instead, it is parsed by the phone which then constructs an ASN.1 coded request to the network.
These codes are hardcoded into every GSM/UMTS/LTE device worldwide and cannot be changed by your network operator.

Unstructured Supplementary Service Data (USSD) codes
If you enter a code that at least ends in a hash sign (and press <SEND>) and is not recognized by the phones MMI parser, the code will be sent to the network verbatim. It then depends on the network if this code is supported. One of the most used cases is a code for prepaid cards to check your balance. Many networks use something like *#100#. But it is really the choice of the network operator which code to use as long as it not already taken.

So entering *20*1234# <SEND> or *21*1234# <SEND> would do two completely different things: The first code would be sent as-is to the network for further processing (most likely returning an error), while the second code would be parsed by the phone and a structured request for activation of call forwarding would be sent to the network.

Please note: For SS and USSD codes you always need to press the <SEND> key after entering them, so it is not possible to automatically execute those codes with a tel-URL.

Manufacturer defined MMI codes
This is the category into which the much talked-about Samsung code falls.

Codes specific to your phone model that have been built in by the manufacturer to, for example, activate service menus or reset the device. These codes also contain * and # characters. Since the codes are not being sent to the network, you don’t have to press the <SEND> key at the end – they are executed as soon as the last digit or character has been entered. There is one code that is mandatory for all manufacturers of GSM/UMTS/LTE phones to implement:*#06#
It shows the devices IMEI (Internatiol Mobile Equipment Identifier)

SIM control codes
These codes are used, for example, to change your SIMs PIN code.
**04*1234*6789*6789# would change your PIN code from "1234" to "6789".
These codes are also executed without pressing the <SEND> key.

The complete specification for the MMI interface of GSM/UMTS/LTE devices can be found in 3GPP TS 22.030: "Man-Machine Interface (MMI) of the User Equipment (UE)"


tobias at ccc . de
