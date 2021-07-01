# <p align="center">Troubleshooting</p>

> ---
> 
> **<p align="center">Sometimes your forum might run into some issue. Although the error might be looking scary, in the end it could be just a simple problem with simple solution.</p>**
> 
> ---
> 
> <p align="center">We have created this troubleshooting guide for you to fix the most common issues of your forum without the need of <a href="https://github.com/gwillem/freeflarum.com/issues">creating a new issue</a>.</p>
> 
> ---

### My forum showed me a message similar to "Oops! Something went wrong. Try reloading the page."

This error originates from Flarum, and it could happen because of a frontend or backend error.

Frontend is the Flarum page as you see it, with all those rendered pages and discussions. It is what your browser sees when you access your forum. This also includes the compiled JavaScript, which tends to cause errors like these on the client-side.

Backend is the Flarum's source code (written in PHP). It is not something that your browser reads, but your browser can communicate with the server. If FreeFlarum's server responds with an error code (502, 504, etc.), it gets sent back to the client.

To figure out whether it is a JavaScript (client-side) or server-side error, you can open up the developer tools in your browser and look for errors in the console. This is for advanced users only.

Starting from the July 2021 update of FreeFlarum, you are able to view your forum server-side logs from your settings page at /settings/logs). From there, you can view more instructions on how to proceed.

Since FreeFlarum is not affiliated with Flarum and we are simply just a hosting provider, we can't fix issues in Flarum for our clients. You must report the error to Flarum maintainers at https://discuss.flarum.org.

### My forum won't boot and I can't access it. It says that details have been logged to the logs file.

This is the same scenario as above, except that now the error is critical and Flarum was unable to boot properly.

If that's the case, then please check your most recent log file at /settings/logs and report any errors that you've found to the Flarum team at https://discuss.flarum.org.

### I have reported the error, but Flarum said that it's related to FreeFlarum

In that case, report it to us in [our discussion](/discuss) or by [E-mail](mailto:info@freeflarum.com).

### I can't CNAME my domain to FreeFlarum. It says that my domain does not CNAME to xxx.freeflarum.com.

First of all, check if the domain CNAMEs to FreeFlarum properly. The CNAME record should look like this:

`subdomain.yourdomain.tld.    300    IN   CNAME    yourforumname.freeflarum.com`

Note that CNAMING root domains (e. g. just `yourdomain.tld`) is not possible ([this is a limitation of CNAME](https://ns1.com/resources/cname), although a very few hosting providers might allow it). Only CNAME records are supported - so no ALIAS or A record. FreeFlarum is made to check for CNAME only.

Please, check our [documentation about custom domain linking](/docs/tutorials/linking-custom-domain) for more information.

