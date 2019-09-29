Your forum is initially named `<you>.freeflarum.com`. But it is easy (and free) to use your own domain name. It looks more professional and also ensures your independence of FreeFlarum. If you ever want to migrate your forum elsewhere, you can keep the same name (and data).

To start using your own domain name, follow these steps:

1. Get a domain name, with a registrar such as namecheap.com or gandi.net. 
1. Add a CNAME DNS record at the registrars control panel ([what is DNS?](https://dnsmadeeasy.com/support/what-is-dns/))
1. Enter your custom domain on the FreeFlarum "Settings" page

Configuring the DNS can be tricky, because every registrar has a different method and rules to do so. 

## General DNS instructions

You should create a CNAME record from your own domain name to FreeFlarum, which looks like this:

```
forum.your.com CNAME you.freeflarum.com
```

Your provider might ask for a TTL, you should set this as low as possible, eg 2 minutes. This allows you to change servers quickly, if necessary.

## Using a root / naked domain

A domain without a subdomain (eg "your.com" instead of "www.your.com") is called a "root" domain. You can use this for your FreeFlarum, but with a few restrictions. These restrictions have nothing to do with FreeFlarum but are a property of the DNS system ([background info here](https://medium.freecodecamp.org/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c)). Conditions:

1. There are no other records. So no "www" or other subdomains and no MX records. You will not be able to use any email addresses for this domain. You will have to remove all other records, if any.
1. Your registrar / DNS provider supports it (Cloudflare doesn't).

## Redirect the root domain

Say you use "www.your.com" as FreeFlarum domain name. However, you want people browsing to "your.com" to be redirected to "www.your.com". There are several services that you can use, for example [WWW-izer](http://wwwizer.com/). You configure your DNS and point "your.com" with an A record to `174.129.25.170`.

## Using Namecheap

![](https://buq.eu/screenshots/UGyVEpRGUQtalMytIlkH5ijM.png)

## Using Cloudflare

![](https://buq.eu/screenshots/MMlyMjo6I6Hb7IfSXwHXOaxu.png)

Make sure to **disable the proxy** so that the icon is grey (not orange).

## Reset the domain

If you used a custom domain but don't want it anymore, you can enter your xxx.freeflarum.com name in the settings.
