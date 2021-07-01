Your forum is initially named `<you>.freeflarum.com` or `<you>.flarum.cloud`. But it is easy (and free) to use your own domain name. It looks more professional and also ensures your independence of FreeFlarum. 

If you ever want to migrate your forum elsewhere, you can keep the same name (and data).

!!! info "To start using your own domain name, follow these steps:"

    1. Get a domain name, with a registrar such as namecheap.com or gandi.net. 
    2. Add a CNAME DNS record at the registrar's control panel ([What is DNS?](https://dnsmadeeasy.com/support/what-is-dns/))
    3. Enter your custom domain on the [FreeFlarum Settings](https://www.freeflarum.com/settings/forum_settings) page

Configuring the DNS can be tricky, because every registrar has a different method and rules to do so. We will try to tell you some basics.

!!! info "General DNS instructions"

    You should create a CNAME record from your own domain name to FreeFlarum, which looks something like this:

    `subdomain.yourdomain.tld. 300 IN CNAME yourforumname.freeflarum.com` (note that DNS record usually ends with a dot - `.`)

!!! note "TTL"
    Your provider might ask for a TTL, you should set this as low as possible, eg. 2 minutes. This allows you to change servers quickly, if necessary.

!!! info "Using a root/naked domain"

    A domain without a subdomain (eg "your.com" instead of "www.your.com") is called a "root" domain. It is currently incompatible with FreeFlarum and can't be used.

    There's one trick to "fake" the root functionality of your domain by simply using a "www" subdomain. Or, you can make a redirect from your root domain to your subdomain linked to FreeFlarum. Example:

    • You

!!! note
    If you keep getting an error from FreeFlarum saying that a CNAME cannot be found, first double check whether a CNAME can be found  using a [third party tool](https://www.ultratools.com/tools/dnsLookup). 
    
    If no CNAME record can be added, your provider probably does support it. You may switch to another DNS provider. These DNS services are known to work with FreeFlarum: [Namecheap](https://www.namecheap.com), [Gandi](https://www.gandi.net), [HiChina](https://www.hichina.com), [Dynadot](https://www.dynadot.com), [Alidns](https://www.alidns.com), [HostFly.by](https://hostfly.by), [NameBright](https://www.namebright.com).

!!! note "Using Namecheap"

    ![](https://buq.eu/screenshots/UGyVEpRGUQtalMytIlkH5ijM.png)

!!! note "Using Cloudflare"

    ![](https://buq.eu/screenshots/MMlyMjo6I6Hb7IfSXwHXOaxu.png)

!!! warning "Proxy"
    Make sure to **disable the proxy** so that the icon is grey (not orange).

!!! question "Reset the domain"

    If you used a custom domain but don't want it anymore, you can enter your `xxx.freeflarum.com` (or `xxx.flarum.cloud`) name in the [settings](/settings/forum_settings).
