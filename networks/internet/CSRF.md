# CSRF

https://www.requestpolicy.com/security.html

https://www.sans.org/top25-software-errors/#cat1
https://heatshield.io/docs/fail2ban-alternative


**Cross-site requests** are requests that your browser is told to make by a website you are visiting to a completely different website.


**Cross-Site Request Forgery** (CSRF) is an attack that takes advantage of the fact that a website that receives a request from your browser may not be able to distinguish that a human user didn't actually intend to make a (potentially risky) request.

When you are at a website, say evil-site.com, the content of the page that you are viewing can tell your browser to make a request to your-bank.com. When your-bank.com receives the request, it may not know that you didn't really intend to make that request.

This attack is sometimes also called "session-riding", but that only describes certain types of CSRF attacks and so can be misleading. 

Some types of CSRF attacks, for example, actually join the victim to an attacker's session.

CSRF attacks can also be used to cause the client to download illegal content or make other requests which will, by their apparent legal or ethical ramifications, cause problems in the user's life (legal problems, employment problems, relationship problems, etc.). 

It is considered one of the 25 most dangerous programming errors by SANS/CWE.

How can you stay safe against CSRF attacks? Until now, protecting against CSRF attacks required the user to trust that every website protects itself against CSRF attacks (and, of course, many don't). Users had very limited ability to protect themselves (e.g. always logging out of services that require login, not being logged into two websites simultaneously, or using completely separate browsers or browser instances for different websites). These protections, however, were only effective in certain cases.

This extension, RequestPolicy, allows you to protect yourself. With RequestPolicy, cross-site requests are disallowed unless you choose to allow them. You won't have to just hope that you don't fall victim to CSRF attacks -- you'll be safe.

## Clickjacking
One of the more recently discovered browser/web application security flaws is clickjacking.

In most cases, clickjacking attacks require that a malicious (or exploited) website be able to load other websites in IFRAMEs (small browser windows embedded within the main browser window).
The RequestPolicy extension protects you from these types of attacks because cross-site requests will not be allowed unless you explicitly allow them. So, for example, if you are on evil-site.com, the evil-site.com webpage will not be able to tell your browser to load a page from your-bank.com unless you choose to allow that.

## Network attacks and scans
Using RequestPolicy will also help prevent your browser from being used with various types of network attacks and network scanning. For example, if a website you visit tries to use your browser to perform a scan of your network, those requests will be blocked.

## What RequestPolicy cannot help with
It's important to understand that RequestPolicy can only stop requests that the browser knows about. It is possible for browser plugins such as Flash, Java, and Silverlight to bypass the web browser in making requests. Even though some requests made by these plugins are controlled by RequestPolicy, it's good to be aware that third-party plugins such as these may bypass the browser and, therefore, also bypass RequestPolicy.

In addition to disallowing these plugins by default, there are also plenty of security reasons to disallow JavaScript on websites you visit unless you are sure you want to allow it. To help you control when plugins and JavaScript run on website you visit, we suggest using the NoScript Firefox extension. Using NoScript in addition to RequestPolicy will give you a highly secure browser.
