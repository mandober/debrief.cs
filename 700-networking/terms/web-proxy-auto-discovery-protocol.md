# Web Proxy Auto-Discovery Protocol

https://findproxyforurl.com/wpad-introduction/
https://www.wikiwand.com/en/Web_Proxy_Auto-Discovery_Protocol

*Web Proxy Auto-Discovery Protocol (WPAD)* 
aids a web browser in detecting the URI of a PAC file using DNS or DHCP.

A browser that supports both DHCP and DNS 
will first attempt to locate a PAC file using DHCP,
and should that fail, it will try DNS WPAD metod.

`DNS WPAD` is a method of detecting a PAC file via discovery by leveraging the network name of the user computer and using a (presumably) consistent DNS naming and a conventinal PAC script file name (which is `wpad.dat`). Prerequisites include the presence of a PAC file, with particular name, at the  particular location, web server, and a locally accessed DNS host (hostname) to point to the web server.

## Example

* the network name of the user's computer is
  `laptop01.us.division.company.com`
* PAC, filename `wpad.dat`
  is served by the host `wpad.company.com`
* A DNS WPAD enabled browser will 
  remove the machine name, `laptop01`,
  apply `wpad` to the network name, 
  and apply as a suffix the file resource `/wpad.dat`, e.g. http://wpad.us.division.company.com/wpad.dat
* The browser will try to download the PAC file from the location
  http://wpad.us.division.company.com/wpad.dat
* If the web browser is unable to resolve the host 
  `wpad.us.division.company.com`
  it will progress through the sub-domain node hierarchy 
  and attempt to download the wpad.dat file from the host
  `wpad.division.company.com`, and so on,
  until the lowest valid node is reached, i.e. 
  `wpad.company.com`


The Web Proxy Auto-Discovery Protocol (WPAD) is a method used by clients to locate the URL of a configuration file using DHCP and/or DNS discovery methods. Once detection and download of the configuration file is complete, it can be executed to determine the proxy for a specified URL.
