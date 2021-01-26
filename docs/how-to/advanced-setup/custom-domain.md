Your forum is initially named `<you>.freeflarum.com` or `<you>.flarum.cloud`. But it is easy (and free) to use your own domain name. It looks more professional and also ensures your independence of FreeFlarum. 
If you ever want to migrate your forum elsewhere, you can keep the same name (and data).

!!! info "To start using your own domain name, follow these steps:"

    1. Get a domain name, with a registrar such as namecheap.com or gandi.net. 
    2. Add a CNAME DNS record at the registrar's control panel ([What is DNS?](https://dnsmadeeasy.com/support/what-is-dns/))
    3. Enter your custom domain on the [FreeFlarum Settings](https://www.freeflarum.com/settings) page

Configuring the DNS can be tricky, because every registrar has a different method and rules to do so. We will try to tell you some basics.

!!! info "General DNS instructions"

    You should create a CNAME record from your own domain name to FreeFlarum, which looks like this:

    `forum.your.com CNAME you.freeflarum.com.` (note that DNS record usually ends with a dot - `.`)

!!! note "TTL"
    Your provider might ask for a TTL, you should set this as low as possible, eg. 2 minutes. This allows you to change servers quickly, if necessary.

!!! info "Using a root/naked domain"

    A domain without a subdomain (eg "your.com" instead of "www.your.com") is called a "root" domain. You can use this for your FreeFlarum, but with a few restrictions. These restrictions have nothing to do with FreeFlarum but are a property of the DNS system ([More info](https://medium.freecodecamp.org/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c)). 
    
    Conditions:

    1. There are no other records. So no "WWW" or other subdomains and no MX records. You will not be able to use any email addresses for this domain. You will have to remove all other records, if any.
    2. Your registrar/DNS provider supports it (Cloudflare does not).

!!! note
    If you keep getting an error from FreeFlarum saying that a CNAME cannot be found, first double check whether a CNAME can be found  using a [third party tool](https://www.ultratools.com/tools/dnsLookup). 
    
    If no CNAME record can be added, your provider probably does support it. You may switch to another DNS provider. These DNS services are known to work with FreeFlarum: [Namecheap](https://www.namecheap.com), [Gandi](https://www.gandi.net), [HiChina](https://www.hichina.com), [Dynadot](https://www.dynadot.com), [Alidns](https://www.alidns.com), [HostFly.by](https://hostfly.by), [NameBright](https://www.namebright.com).

!!! info "Redirect the root domain"

    Say you use "www.your.com" as FreeFlarum domain name. However, you want people browsing to "your.com" to be redirected to "www.your.com". There are several services that you can use, for example [WWW-izer](http://wwwizer.com/). You configure your DNS and point "your.com" with an A record to `174.129.25.170`.

!!! note "Using Namecheap"

    ![](https://buq.eu/screenshots/UGyVEpRGUQtalMytIlkH5ijM.png)

!!! note "Using Cloudflare"

    ![](https://buq.eu/screenshots/MMlyMjo6I6Hb7IfSXwHXOaxu.png)

!!! warning "Proxy"
    Make sure to **disable the proxy** so that the icon is grey (not orange).
    
!!! warning "Hostname"
    A hostname entry usually ends with a dot (`.`) unless you specifically want it to be suffixed by your domain. In other words, if it doesn't work, add a dot (`.`) after your hostname in your CNAME configuration at your domain/hosting provider.

!!! question "Reset the domain"

    If you used a custom domain but don't want it anymore, you can enter your xxx.freeflarum.com (or flarum.cloud) name in the [settings](/settings).
