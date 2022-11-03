# Custom Domain

Your forum is initially named `<you>.freeflarum.com` or `<you>.flarum.cloud`. But it is easy (and free) to use your own domain name to make it look more professional.

Plus, if you ever want to migrate your forum elsewhere, you can keep the same name (and data).

!!! info "To start using your own domain name, follow these steps:"

    1. Get a domain name, with a registrar such as [Namecheap](https://namecheap.com) or [Porkbun](https://porkbun.com);
    2. Add a CNAME DNS record at the registrar's control panel that points to your FreeFlarum host (see below);
    3. Enter your custom domain in the [FreeFlarum Settings](https://freeflarum.com/settings/forum_settings) page.

Configuring DNS can be tricky, because every registrar has a different method and rules to do so. We will try to tell you the basics to get going.

!!! info "General DNS instructions"

    You should create a CNAME record from your own domain name to FreeFlarum, which looks like this:

    `subdomain.yourdomain.tld. 300 IN CNAME yourforumname.freeflarum.com`

!!! note "TTL"
    Your provider might ask for a TTL, you should set this as low as possible, e. g.: 2 minutes. This allows you to change servers quickly, if necessary.

!!! info "Using a root/naked domain"

    A domain without a subdomain (eg `your.tld` instead of `www.your.tld`) is called a "root" domain. Root CNAMEs are not officially supported by the DNS, and are not compatible with FreeFlarum either.

    There's one trick to "fake" the root functionality of your domain, simply by using a "www" subdomain. Or, you can make a redirect from your root domain to your subdomain linked to FreeFlarum, e. g.: your forum is at `your.forum.tld`, and `forum.tld` redirects users to `your.forum.tld`. Redirection rules can be set up at your domain registar, if they support them.

!!! note
    If you keep getting an error from FreeFlarum saying that a CNAME cannot be found, first double check whether a CNAME can be found  using a [third party tool](https://www.ultratools.com/tools/dnsLookup).

    If no CNAME record can be added, your provider probably does support it. You may switch to another DNS provider. These DNS services are known to work with FreeFlarum: [Namecheap](https://www.namecheap.com), [Porkbun](https://porkbun.com), [Gandi](https://www.gandi.net), [HiChina](https://www.hichina.com), [Dynadot](https://www.dynadot.com), [Alidns](https://www.alidns.com), [HostFly.by](https://hostfly.by), [NameBright](https://www.namebright.com).

!!! note "Using Namecheap"

    ![](https://buq.eu/screenshots/UGyVEpRGUQtalMytIlkH5ijM.png)

!!! note "Using Cloudflare"

    ![](https://buq.eu/screenshots/MMlyMjo6I6Hb7IfSXwHXOaxu.png)

!!! warning "Proxy"
    Make sure to **disable the Cloudflare proxy**, so that the icon is grey (not orange).

!!! question "Reset the domain"

    If you used a custom domain but don't want it anymore, you can enter your old `xxx.freeflarum.com` (or `xxx.flarum.cloud`) hostname in the [FreeFlarum settings](https://freeflarum.com/settings/forum_settings).
