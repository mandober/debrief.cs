# REST

https://en.wikipedia.org/wiki/Representational_state_transfer

Representational state transfer (REST) is a *software architectural style* that was created to guide the design and development of the architecture for www.

REST defines a set of constraints for how the architecture of an Internet-scale distributed hypermedia system, such as the Web, should behave.

>The REST architectural style emphasises the scalability of interactions between components, uniform interfaces, independent deployment of components, and the creation of a layered architecture to facilitate caching of components to reduce user-perceived latency, enforce security, and encapsulate legacy systems.

REST has been employed throughout the software industry to create stateless, reliable Web-based applications.

An application that obeys the *REST constraints* may be informally described as *RESTful*, although this term is more commonly associated with the design of HTTP-based APIs, and what are widely considered best practices regarding the HTTP verbs a resource responds to, while having little to do with REST as originally formulated - and is often even at odds with the concept.

## Principle

The term **representational state transfer** was introduced and defined in 2000 by computer scientist Roy Fielding in his doctoral dissertation. It means that a server will respond with the representation of a resource (today, it will most often be an HTML, XML or JSON document) and that resource will contain hypermedia links that can be followed to make the state of the system change. Any such request turn receives the representation of a resource, and so on.

An important consequence is that the only identifier that needs to be known is the identifier of the first resource, as other identifiers will be discovered.

This means those identifiers can change without the need to inform the client beforehand, and that there can be only loose coupling between client and server.
