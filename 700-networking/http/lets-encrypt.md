# Let's Encrypt HTTPS Certificates

https://letsencrypt.org/
https://letsencrypt.org/getting-started/

## Getting Started
To enable HTTPS on your website, you need to get a certificate (a type of file) from a Certificate Authority (CA), such as **Let's Encrypt**.

In order to get a certificate for your website's domain from Let's Encrypt, you have to *demonstrate control over your domain*, which, in case of Let's Encrypt, is done through the software that uses the *ACME protocol* and, typically, runs on your web host.

To figure out what method will work best for you, you will need to know whether you have shell (SSH) access to your web host

## With Shell Access

We recommend that most people with shell access use the [Certbot](https://certbot.eff.org/) ACME client.

It can automate certificate issuance and installation with no downtime. It also has expert modes for people who don’t want autoconfiguration. It’s easy to use, works on many operating systems, and has great documentation. Visit the Certbot site to get customized instructions for your operating system and web server.

If Certbot does not meet your needs, or you’d like to try something else, there are many more ACME clients to choose from. Once you’ve chosen ACME client software, see the documentation for that client to proceed.

If you’re experimenting with different ACME clients, use our staging environment to avoid hitting rate limits.
