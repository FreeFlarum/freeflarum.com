GitHub Login
-

In order to setup GitHub login, you firstly need to create a [GitHub App](https://developer.github.com/apps/building-github-apps/creating-a-github-app/)

To create a GitHub App, navigate to your __User Settings__:
![OwO, first we need to navigate to user settings!](https://snag.gy/u6xanc.jpg)

Navigate to __Developer Settings:__
![ÓwÓ, now this is something devilish!](https://snag.gy/zbsdRL.jpg)

Click on __OAuth Apps__, then on __New OAuth App__ button:
![ôwô, much wows!](https://snag.gy/szy9Vd.jpg)

Now, fill in some basic and required settings:
![finally we made it!](https://snag.gy/xP05qT.jpg)

The __Authorization callback URL__ is the most important part. It has to be set to `yourforum.freeflarum.com/auth/github`.
If you are using a [Custom Domain](https://www.freeflarum.com/docs/howto/custom-domain/), just add the `/auth/github` to the end of your domain.

Once you have successfuly created your __OAuth App__, you should be redirected to a page similar to this:

![oh no, even more steps!!? c'mon!](https://snag.gy/eE7jSt.jpg)

The __Client ID__ and __Client Secret__ area is important. You will input those credentials to your GitHub Login extension at your admin dashboard.
If you haven't enabled the extension already, go to https://yourforumname.freeflarum.com/admin#/extensions. 
Find the __GitHub Login__ extension and enable it by clicking on it.
![yey! GitHub Login located!](https://snag.gy/eOEtAa.jpg)

Another modal should popup, with __Client ID__ and __Client Secret__ fields. You probably know what to do now - copy your __Client Credentials__ from your __App__ page and paste it into this modal.
Hit save.

If you have enabled GitHub Login already, you can click on the dotted navigation menu popup to revive the sneaky modal we mentioned above:
![oh, where are you sneaky modal? OH, THERE YOU ARE!!!](https://snag.gy/VZIxkf.jpg)

If you did all the steps above correctly, congratulations! Your users should be able to login with GitHub now! You can test it in __Incognito Mode__, if supported.
![we DID IT!!!](https://snag.gy/YXJNoO.jpg)

If an error appeared after logining in using GitHub, please [open up a new issue](https://github.com/gwillem/freeflarum.com/issues/new), so we can look into it!
