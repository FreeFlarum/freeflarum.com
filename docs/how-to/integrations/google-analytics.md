!!! note "Note"
     There is an easier way how to setup Google Analytics. Take a look at [this tutorial](/docs/how-to/extensions/fof-analytics/).

# Google Analytics (the "old" way)

This guide will help you to setup Google Analytics for your forum.
We obviously can't let our customers to edit the DNS settings on their own, as this is a pretty dangerous setting to edit, so we gotta find other ways around that.

Go to the **Administrator section** of your forum and navigate to the '**Appearance**' section. Below, there should be 2 buttons - one to edit the **header** and a second one to edit the **footer** code. What will we do is basically we will put the verification code into these two, so that Google robot will fetch the page then and when it sees that there is that same piece of code as Google sent you, it will know that you are indeed the owner of your forum. Verification is needed, else you could just paste the code and use it whereever you want to fetch data from sites you don't even own.

The **verification code** from Google Search Console (formerly Google Webmaster Tools, and also the code from Bing, if you choose to use that) should be pasted into the header. Once your site is verified, Google shouldn't ask for verification as it will remember that you are the owner.

And the **tracking code** for Google Analytics goes into the **footer**.

**Both codes have to be HTML**, so they will look something like this:

```html
<meta name="google-site-verification" content="bunch of random letters and numbers"/>
```

(code above goes into the header).

**Be sure to copy the whole code**, else it will not work. The code above goes into the header.
And a code that looks something like this...:

```html
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=another bunch of letters and numbers"></script>
<script>
     window.dataLayer = ...
...and so on
```

**...goes into the footer.**

> ---
> #### __You might be looking for:__
> - **[Google Analytics](/docs/how-to/integrations/google-analytics/)**
> - **[Analytics Extension](/docs/how-to/extensions/fof-analytics)**
>
> ---
