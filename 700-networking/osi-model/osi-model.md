# OSI model

https://en.wikipedia.org/wiki/OSI_model

**Open Systems Interconnection (OSI) model** 
is a *conceptual model* 
that characterises and *standardizes* 
the *communication functions* 
of a computing system 
(or telecommunication system) 
regardless of the underlying 
*internal structure* and technology, 
aiming to increase *interoperability* 
of diverse communication systems 
with *standard communication protocols*.


The model partitions the flow of data 
in a communication system 
into **7 abstraction layers**, 
from the physical implementation 
  of transmitting bits across a communications medium 
to the highest-level representation 
  of data of a distributed application.

Each intermediate layer 
serves a class of functionality to
  the layer above it 
and is served by 
  the layer below it. 

Classes of functionality are realized in software 
by standardized communication protocols.


The OSI model was developed starting in the late 1970s 
to curb the emergence of diverse computer networking methods 
competing for adoptation. 

In the 1980s, the model became a working product of 
the Open Systems Interconnection group at the ISO. 

While attempting to provide 
  a comprehensive description of networking, 
the model failed to garner reliance 
  by the software architects 
  in the design of the early Internet, 
which is reflected in the less prescriptive 
*Internet Protocol Suite*, 
  principally sponsored under the auspices of 
  the Internet Engineering Task Force (IETF).


OSI model by layers (top to bottom):
- 7. Application layer
- 6. Presentation layer
- 5. Session layer
- 4. Transport layer
- 3. Network layer
- 2. Data link layer
- 1. Physical layer


```
                Request data flow

(client)                             (server)

Application layer                    Application layer
↓                                    ↑
Presentation layer                   Presentation layer
↓                                    ↑
Session layer                        Session layer
↓                                    ↑
Transport layer                      Transport layer
↓                                    ↑
Network layer                        Network layer
↓                                    ↑
Data link layer                      Data link layer
↓                                    ↑
Physical layer --------------------> Physical layer
```
