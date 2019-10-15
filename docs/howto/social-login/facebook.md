# Login with Facebook

Many FreeFlarum users want to activate Facebook login, but there doesn't seem to be an up-to-date guide as of yet. Also, Facebook now requires a public privacy policy before you can activate your FB login. So follow these steps to get rollin' !

First, create (or copy from [somewhere](https://www.freeprivacypolicy.com)) a privacy policy. You can just create a new discussion and use that. 

Go to https://developers.facebook.com/apps/ and press "Add new app":

![](https://snipboard.io/1xCE9G.jpg)
 
Enter your forum name and email. I have choosed "owo" for illustration purposes:
![](https://snipboard.io/3CJYRk.jpg)

You know what to do here:
![](https://snipboard.io/Q8VoZJ.jpg)

Go to Products and add Facebook Login

Go to Settings > Basic. 

Copy the App ID and App Secret.
![](https://buq.eu/screenshots/vsMYx1tB2t6js3WIxOvlvFAy.png)

Add domain names (make sure to add both the "www" and non-"www" version if applicable.

Add site URL. Use http or https, whatever you have standardized on. Use trailing slash, like this: `https://myforum.com/`.

Add the privacy policy URL (noted earlier)

Go to Settings > Advanced. Add your domain to "Domain Manager" including http(s) and trailing slash. 

App review -> "Make Public"

Go to your Forum admin panel. Go to extensions. Enable the Facebook extension. Enter App ID and App Secret as noted earlier.
![](https://buq.eu/screenshots/n690ud4VBGZF4IBlZScaNKvq.png)

If you are not using FreeFlarum, you might have to run a `php flarum cache:clear` and `rm assets/rev-manifest.json` in the shell as a last step.

Your facebook login should work now!

