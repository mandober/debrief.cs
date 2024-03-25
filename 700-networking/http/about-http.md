# HTTP :: About

https://en.wikipedia.org/wiki/HTTP

Hypertext Transfer Protocol (HTTP) is an 
*application layer protocol* (top, 7th, layer) 
in the *Internet protocol suite* model 
for distributed, collaborative, 
*hypermedia information systems*.

HTTP is the foundation 
of data communication 
on the World Wide Web, 
where *hypertext documents* 
include *hyperlinks* to other resources 
that the user can easily access.

>Development of HTTP was initiated by Tim Berners-Lee at CERN in 1989 
and summarized in a simple document describing the behavior of a client and a server using the first HTTP version, named 0.9. That version was subsequently developed, eventually becoming the public `HTTP 1.0`.

`HTTP/1` was finalized and fully documented (as version 1.0) in 1996.

>`HTTP/1.1` as improvement of the first version released in 1997.

The *HTTP specification* was updated in 1999, 2014 and 2022.

Development of early HTTP RFCs started a few years later in a coordinated effort by the IETF and the W3C, with work later moving to the IETF.

- `HTTPS` is the secure variant of HTTP used by 80% of websites in 2023
- `HTTP/2` in 2015 advances expression of HTTP's semantics "on the wire"

As of April 2023, `HTTP/2` is used by 39% of websites and supported by almost all web browsers (over 97% of users). `HTTP/2` is supported by major web servers over Transport Layer Security (TLS) using an Application-Layer Protocol Negotiation (ALPN) extension where TLS 1.2 or newer is required.

`HTTP/3`, the successor to HTTP/2, was published in 2022.
- HTTP/3 is now used over 26% of websites and is supported by most web browsers, i.e. (at least partially) supported by 94% of web browsers.
- HTTP/3 uses `QUIC` instead of `TCP` for the underlying transport protocol.
- Like HTTP/2, it does not obsolesce previous major versions of the protocol.
- HTTP/3 has lower latency for real-world web pages, with up to 3 times faster transfers than HTTP/2 and HTTP/1.1.

## Technical overview

HTTP functions as a request-response protocol in the client-server model.

The client submits an HTTP request message to the server. The server returns a response message to the client with completion status information about the request, possibly with the requested content in its message body.

HTTP is designed to permit intermediate network elements to improve or enable communications between clients and servers. High-traffic websites often benefit from web cache servers that deliver content on behalf of upstream servers to improve response time. Web browsers cache previously accessed web resources and reuse them, whenever possible, to reduce network traffic. HTTP proxy servers at private network boundaries can facilitate communication for clients without a globally routable address, by relaying messages with external servers.

To allow intermediate HTTP nodes (proxy servers, web caches, etc.) to accomplish their functions, some of the HTTP headers (found in HTTP requests/responses) are managed *hop-by-hop* whereas other HTTP headers are managed *end-to-end* (managed only by the source client and by the target web server).

HTTP is an application layer protocol designed within the framework of the Internet protocol suite. Its definition presumes an underlying and reliable transport layer protocol, thus TCP is commonly used. However, HTTP can be adapted to use unreliable protocols such as the UDP, e.g. in HTTPU and SSDP.

*HTTP resources* are identified and located on the network by URLs, using the URI schemes `http` and `https`. As defined in RFC 3986, URIs are encoded as hyperlinks in HTML documents, so as to form interlinked hypertext documents.


* HTTP/1.0 demands making a separate connection to the same server for every request.

* HTTP/1.1 can reuse TCP connection to make multiple resource requests so communications experience less latency (as the establishment of TCP connections presents considerable overhead, particularly under high traffic).

* HTTP/2 maintains the same client-server model and protocol but
- uses a compressed binary representation of HTTP headers instead of text
- uses a single TCP/IP (usually encrypted) connection per accessed server
  domain instead of 2 to 8 TCP/IP connections
- uses one or more bidirectional streams per TCP/IP connection in which HTTP
  requests and responses are broken down and transmitted in small packets to almost solve the problem of the head of line blocking (HOLB problem).
- has push capability to allow server app to send data to clients whenever new
  data is available (without forcing clients to poll request periodically).

* HTTP/3 is a revision of previous HTTP/2 in order to use QUIC + UDP transport protocols instead of TCP/IP connections also to slightly improve the average speed of communications and to avoid the occasional (very rare) problem of TCP/IP connection congestion that can temporarily block or slow down the data flow of all its streams (another form of "head of line blocking").

## HTTP data exchange

HTTP is a stateless application-level protocol and it requires a reliable network transport connection to exchange data between client and server.

In HTTP implementations, TCP/IP connections are used using well-known ports: typically, port 80 if the connection is unencrypted, and port 443 if the connection is encrypted.

In HTTP/2, a TCP/IP connection plus multiple protocol channels are used.

In HTTP/3, the application transport protocol QUIC over UDP is used.

### Request and response messages through connections

Data is exchanged through a sequence of request-response messages which are exchanged by a session layer transport connection.

- An HTTP client initially tries to connect to a server establishing a connection (real or virtual).
- An HTTP server listening on that port accepts the connection and then waits for a client's request message.
- The client sends its request to the server.
- Upon receiving the request, the server sends back an HTTP response message (header plus a body if it is required).
- The body of this message is typically the requested resource, although an error message or other information may also be returned.
- At any time (for many reasons) client or server can close the connection.
- Closing a connection is usually advertised in advance by using one or more HTTP headers in the last request/response message sent to server or client.

### Persistent connections

Main article: HTTP persistent connection
https://en.wikipedia.org/wiki/HTTP_persistent_connection

In HTTP/0.9, the TCP/IP connection is always closed after server response has been sent, so it is never persistent.

In HTTP/1.0, as stated in RFC 1945, the TCP/IP connection should always be closed by server after a response has been sent. [note 3]

In HTTP/1.1 a keep-alive-mechanism was officially introduced so that a connection could be reused for more than one request/response. Such persistent connections reduce request latency perceptibly because the client does not need to re-negotiate the TCP 3-Way-Handshake connection after the first request has been sent. Another positive side effect is that, in general, the connection becomes faster with time due to TCP's slow-start-mechanism.

HTTP/1.1 added also HTTP pipelining in order to further reduce lag time when using persistent connections by allowing clients to send multiple requests before waiting for each response. This optimization was never considered really safe because a few web servers and many proxy servers, specially transparent proxy servers placed in Internet / Intranets between clients and servers, did not handle pipelined requests properly (they served only the first request discarding the others, they closed the connection because they saw more data after the first request or some proxies even returned responses out of order etc.). Besides this only HEAD and some GET requests (i.e. limited to real file requests and so with URLs without query string used as a command, etc.) could be pipelined in a safe and idempotent mode. After many years of struggling with the problems introduced by enabling pipelining, this feature was first disabled and then removed from most browsers also because of the announced adoption of HTTP/2.

HTTP/2 extended the usage of persistent connections by multiplexing many concurrent requests/responses through a single TCP/IP connection.

HTTP/3 does not use TCP/IP connections but QUIC + UDP (see also: technical overview).

### Content retrieval optimizations

HTTP/0.9
- a requested resource was always sent entirely.

HTTP/1.0
- HTTP/1.0 added headers to manage resources cached by client in order to allow conditional GET requests; in practice a server has to return the entire content of the requested resource only if its last modified time is not known by client or if it changed since last full response to GET request. One of these headers, "Content-Encoding", was added to specify whether the returned content of a resource was or was not compressed.
- If the total length of the content of a resource was not known in advance (i.e. because it was dynamically generated, etc.) then the header "Content-Length: number" was not present in HTTP headers and the client assumed that when server closed the connection, the content had been entirely sent. This mechanism could not distinguish between a resource transfer successfully completed and an interrupted one (because of a server / network error or something else).

HTTP/1.1
- new headers to better manage the conditional retrieval of cached resources.
- chunked transfer encoding to allow content to be streamed in chunks in order to reliably send it even when the server does not know in advance its length (i.e. because it is dynamically generated, etc.).
- byte range serving, where a client can request only one or more portions (ranges of bytes) of a resource (i.e. the first part, a part in the middle or in the end of the entire content, etc.) and the server usually sends only the requested part(s). This is useful to resume an interrupted download (when a file is really big), when only a part of a content has to be shown or dynamically added to the already visible part by a browser (i.e. only the first or the following n comments of a web page) in order to spare time, bandwidth and system resources, etc.

HTTP/2, HTTP/3
- Both HTTP/2 and HTTP/3 have kept the above mentioned features of HTTP/1.1.

## HTTP authentication


## HTTP application session

>HTTP is a stateless protocol.

A stateless protocol does not require the web server to retain information or status about each user for the duration of multiple requests.

Some web applications need to manage user sessions, so they implement states, or server side sessions, using for instance HTTP cookies or hidden variables within web forms.

To start an application user session, an interactive authentication via web application login must be performed. To stop a user session a logout operation must be requested by user. These kind of operations do not use HTTP authentication but a custom managed web application authentication.

## HTTP/1.1 request messages
Request messages are sent by a client to a target server.
