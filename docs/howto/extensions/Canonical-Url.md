> ---
> - **Name**: Canonical Url
> - **Author**: MigrateToFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/19307-canonical-url-redirect](https://discuss.flarum.org/d/19307-canonical-url-redirect)
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** 0 minutes - default settings suit everyone
>
> ---

!!! quote "About"
    This extensions creates redirects so that Flarum can only be accessed via the URL defined in `config.php`.
    As for FreeFlarum, this extension is automatically configured, and allows FreeFlarum to operate the large amount of forums with more ease:
    
    > Because of the huge number of forums, the FreeFlarum stack scales better via your extension than maintaining a centralized redirect map in Nginx.
    > _Sanguine on the Canonical Url extension._
    
    That means that it is a good idea to keep this extension enabled, as it improves the stability and accessibility of your forum.
    
!!! question "What is 'config.php'?"
    This is the file that you can't access, since it is located in the root of FF's Flarum installation, and therefore it cannot be modified by you.
    The best idea is just to not worry about this one, since default setting suits all of FF's forums.
    
!!! question "Okay, but what is even this 'Canonical Url'?"
    [This article](https://yoast.com/what-is-a-canonical-url/) explains the use of Canocial Url the best. In short, it mostly prevents duplicate URLs, which may occur when there are dozens of forums out there.
    Search engines are then confused, and they mismatch the URLs even more, causing mess about links and SEO. But that was a very brief explanation of what the extension does, and you should check the tutorial.

!!! note "You might be looking for:"
    - #### **[What is Canonical URL?](https://yoast.com/what-is-a-canonical-url/)**
