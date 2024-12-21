# OSI layers

LN | Layer        | PDU     | Addr | Devices | Proto       | Concerns
---|--------------|---------|------|---------|-------------|-------------------
L7 | Application  |         |      |         |HTTP         | service advertis
L6 | Presentation |         |      |         |             | formatting, encryp
L5 | Session      |         |      |         |             | negotiating codecs
L4 | Transport    | segment | port | router  |TCP UDP NAT  | sequencing
L3 | Network      | packet  | IP   | rou, swi|             | flow ctrl
L2 | Data-Link    | frame   | MAC  | switch  |Ethernet ARP | error correction
L1 | Physical     |         |      | hub, rep|             | signaling

## Physical layer (L1)
- physical medium, wired or wireless
- concerned with the physical transmission of data
- logically a bitstream, phisically voltages/current, radio waves, light waves
- only p2p connection can be considered here, but it's still impossible to communicate, at least due to collisions that occur whenever devices transmit at the same time.
- Carrier Sense Media Acess (CDMA) techinc are used to semaphor communication
- CDMA/CD (collision detection)

## Data-Link layer (L2)
