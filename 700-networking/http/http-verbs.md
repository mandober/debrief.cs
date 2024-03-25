# HTTP verbs

https://en.wikipedia.org/wiki/HTTP_verbs
https://en.wikipedia.org/wiki/HTTP#Request_methods

HTTP defines methods (sometimes called verbs, but spec doesn't mention that term) to indicate the desired action to be performed on the identified resource. What this resource represents, whether pre-existing data or data that is generated dynamically, depends on the implementation of the server. Often, the resource corresponds to a file or the output of an executable residing on the server.

<!-- TOC -->

- [HTTP verbs](#http-verbs)
  - [GET](#get)
  - [HEAD](#head)
  - [POST](#post)
  - [PUT](#put)
  - [DELETE](#delete)
  - [CONNECT](#connect)
  - [OPTIONS](#options)
  - [TRACE](#trace)
  - [PATCH](#patch)
- [Properties of request methods](#properties-of-request-methods)
  - [Safe methods](#safe-methods)
  - [Idempotent methods](#idempotent-methods)
  - [Cacheable methods](#cacheable-methods)
- [Request header fields](#request-header-fields)
- [See also](#see-also)

<!-- /TOC -->

## HTTP verbs

- GET
- HEAD
- POST
- PUT
- DELETE
- CONNECT
- OPTIONS
- TRACE
- PATCH


HTTP/1.0 defined the GET, HEAD, POST methods, and HTTP/1.1 added 5 new methods: PUT, DELETE, CONNECT, OPTIONS, TRACE.

Any client can use any method and the server can be configured to support any combination of methods.

If a method is unknown to an intermediate, it will be treated as an *unsafe method* and *non-idempotent method*.

There is no limit to the number of methods that can be defined, which allows for future methods to be specified without breaking existing infrastructure. WebDAV defined 7 new methods and RFC 5789 specified the PATCH method.

>Method names are case sensitive, unlike HTTP header field names.

All general-purpose web servers are required to implement at least the GET and HEAD methods; all other methods are considered optional by the specification.

### GET

>The GET method requests that the target resource transfer a representation of its state.

GET requests should only retrieve data and should have no other effect.

For retrieving resources without making changes, GET is preferred over POST, as they can be addressed through a URL. This enables bookmarking and sharing and makes GET responses eligible for caching, which can save bandwidth.

The W3C has published about this distinction, saying that web app design should be informed by the above principles, but also by the relevant limitations.

### HEAD

>The HEAD method requests that the target resource transfer a representation of its state, as for a GET request, but without the actual representation data enclosed in the response body.

This is useful for retrieving the representation metadata in the response header, without having to transfer the entire representation.

Uses include checking whether a page is available through the status code and quickly finding the size of a file (Content-Length).

### POST

>The POST method requests that the target resource process the representation enclosed in the request according to the semantics of the target resource. 

For example, it is used for posting a message to an Internet forum, subscribing to a mailing list, or completing an online shopping transaction.

### PUT

>The PUT method requests that the target resource create or update its state with the state defined by the representation enclosed in the request.

A distinction from POST is that the client specifies the target location on the server.

### DELETE

>The DELETE method requests that the target resource delete its state.

### CONNECT

>The CONNECT method requests that the intermediary establish a TCP/IP tunnel to the origin server identified by the request target.

It is often used to secure connections through one or more HTTP proxies with TLS.

### OPTIONS

>The OPTIONS method requests that the target resource transfer the HTTP methods that it supports.

This can be used to check the functionality of a web server by requesting '*' instead of a specific resource.

### TRACE

>The TRACE method requests that the target resource transfer the received request in the response body.

That way a client can see what (if any) changes or additions have been made by intermediaries.

### PATCH

>The PATCH method requests that the target resource modify its state according to the partial update defined in the representation enclosed in the request.

This can save bandwidth by updating a part of a file or document without having to transfer it entirely.


## Properties of request methods

Verb    | req | res | safe| idem| cache
--------|-----|-----|-----|-----|------
GET     | opt | Yes | Yes | Yes | Yes
HEAD    | opt | No  | Yes | Yes | Yes
POST    | Yes | Yes | No  | No  | Yes
PUT     | Yes | Yes | No  | Yes | No
DELETE  | opt | Yes | No  | Yes | No
CONNECT | opt | Yes | No  | No  | No
OPTIONS | opt | Yes | Yes | Yes | No
TRACE   | No  | Yes | Yes | Yes | No
PATCH   | Yes | Yes | No  | No  | No


- req: does request have body
- res: does response have body
- safe: is the method safe
- idem: is the method idempotent
- cache: is the method cacheable


### Safe methods

>A request method is safe if a request with that method has no intended effect on the server. GET, HEAD, OPTIONS, TRACE are defined as safe.

In other words, safe methods are intended to be *read-only*. They do not exclude side effects though, such as appending request information to a log file or charging an advertising account, since they are not requested by the client, by definition.

>In contrast, POST, PUT, DELETE, CONNECT, PATCH are not safe.

They may modify the state of the server or have other effects such as sending an email. Such methods are therefore not usually used by conforming web robots or web crawlers; some that do not conform tend to make requests without regard to context or consequences.

Despite the prescribed safety of GET requests, in practice, they must be handled with caution and defense programming.

### Idempotent methods

>A request method is idempotent if multiple identical requests with that method have the same effect as a single such request. GET, HEAD, OPTIONS, TRACE (safe methods), and PUT, DELETE are defined as idempotent.

Safe methods are trivially idempotent, since they are intended to have no effect on the server whatsoever; the PUT and DELETE methods, meanwhile, are idempotent since successive identical requests will be ignored.

A website might, for instance, set up a `PUT` endpoint to modify a user's recorded email address. If this endpoint is configured correctly, any requests which ask to change a user's email address to the same email address which is already recorded (duplicate requests following a successful request) will have no effect. Similarly, a request to `DELETE` a resource will have no effect if that resource has already been deleted.

In contrast, the methods POST, CONNECT, and PATCH are not necessarily idempotent, and therefore sending an identical POST request multiple times may further modify the state of the server or have further effects, such as sending multiple emails.

In some cases this is the desired effect, but in other cases it may occur accidentally. A user might, for example, inadvertently send multiple POST requests by clicking a button again if they were not given clear feedback that the first click was being processed. While web browsers may show alert dialog boxes to warn users in some cases where reloading a page may re-submit a POST request, it is generally up to the web application to handle cases where a POST request should not be submitted more than once.

Note that whether or not a method is idempotent is not enforced by the protocol or web server. It is perfectly possible to write a web application in which, e.g. a database insert or other non-idempotent action is triggered by a GET or other request. To do so against recommendations, however, may result in undesirable consequences, if a user agent assumes that repeating the same request is safe when it is not.

### Cacheable methods

>A request method is cacheable if responses to requests with that method may be stored for future reuse. GET, HEAD, POST are defined as cacheable.

In contrast, the methods PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH are not cacheable.


## Request header fields

See also: List of HTTP header fields § Request fields
https://en.wikipedia.org/wiki/List_of_HTTP_header_fields#Request_fields

>Request header fields allow the client to pass additional information beyond the request line, acting as request modifiers. They give information about the client, about the target resource, or about the expected handling of the request.



## See also

* Comparison of file transfer protocols
  https://en.wikipedia.org/wiki/Comparison_of_file_transfer_protocols

* List of HTTP header fields
  https://en.wikipedia.org/wiki/List_of_HTTP_header_fields

* List of HTTP status codes
  https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

* Representational state transfer (REST)
  https://en.wikipedia.org/wiki/Representational_state_transfer

* Content negotiation
  https://en.wikipedia.org/wiki/Content_negotiation
* HTTP compression
  https://en.wikipedia.org/wiki/HTTP_compression
* Variant object
  https://en.wikipedia.org/wiki/Variant_object
* Web cache
  https://en.wikipedia.org/wiki/Web_cache
* WebSocket
  https://en.wikipedia.org/wiki/WebSocket
* HTTP/2
  https://en.wikipedia.org/wiki/HTTP/2
