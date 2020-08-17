# Login with Facebook

Many FreeFlarum users want to activate Facebook login, but there doesn't seem to be an up-to-date guide as of yet. Also, Facebook now requires a public privacy policy before you can activate your FB login. So follow these steps to get rollin' !

First, create (or copy from [somewhere](https://www.freeprivacypolicy.com)) a privacy policy. You can just create a new discussion and use that. 

Go to [https://developers.facebook.com/apps/](https://developers.facebook.com/apps/) and press "Add new app":

![](https://snipboard.io/1xCE9G.jpg)
 
Enter your forum name and email. I have choosed "owo" for illustration purposes:

![](https://snipboard.io/3CJYRk.jpg)

You know what to do here:

![](https://snipboard.io/Q8VoZJ.jpg)

Go to Products and add Facebook Login:

![](https://snipboard.io/kwJTiE.jpg)

Go to Settings > Basic:

![](https://snipboard.io/RIJNUW.jpg)

Copy the App ID and App Secret:

![](https://snipboard.io/NJMEQy.jpg)

Fill out the Privacy Policy and (optionally[?]) Terms of Service links:

![](https://snipboard.io/Go7lR0.jpg)

Add domain names (make sure to add both the "www" and non-"www" version if applicable.
We will do that from the Settings section under our Facebook login module category:
![](https://snipboard.io/zJatQj.jpg)

Now you should see something like this:

![](https://snipboard.io/ZncT0P.jpg)

"Valid OAuth Redirect URIs". Seems complicated, yet so simple.
It is in fact just the `https://yourforumname.flarum.cloud/auth/facebook` URL or whatever domain you use. If your forum is located at another domain or you probably used the [custom domain](/docs/how-to/custom-domain/) option, just use that domain. The `./auth/facebook` part is important.

> ---
> **Pro tip:** `./auth/google`, `./auth/twitter` for Goggle and Twitter logins and so on...
>
> ---

Go to Settings > Advanced. Add your domain to "Domain Manager" including http(s) and trailing slash:

![](https://snipboard.io/HdXo4Q.jpg)
![](https://snipboard.io/ULlYF9.jpg)
![](https://snipboard.io/m9rADg.jpg)

Finally, turn it on:

![](https://snipboard.io/b2fekZ.jpg)

Go to your Forum admin panel. Go to extensions. Enable the Facebook extension. Enter App ID and App Secret as noted earlier.
![](https://buq.eu/screenshots/n690ud4VBGZF4IBlZScaNKvq.png)

If you are not using FreeFlarum, you might have to run a `php flarum cache:clear` and `rm assets/rev-manifest.json` in the shell as a last step.

Your Facebook login should work now! If not, please contact us at our [official Flarum discussion](https://discuss.flarum.org/d/7585-free-flarum-hosting-on-an-expert-platform-by-freeflarum-com). 

> ---
> #### __You might be looking for:__
> - **[Google Login](docs/How-to/Integrations/Google-Login/)**
> - **[GitHub Login](/docs/how-to/integrations/github-login/)**
> - **[Discord Login](/docs/how-to/integrations/discord-login/)**
> - **[Passport Login](/docs/how-to/integrations/laravel-passport/)**
>
> ---
