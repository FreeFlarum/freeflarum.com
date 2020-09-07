
## Login with Google

In this tutorial I'm going to show you how can you allow your Flarum users to login with Google. First, make sure you're logged into your Google account.

**1.** Go to the Google API Console: [https://console.developers.google.com/project/_/apiui/apis/library](https://console.developers.google.com/project/_/apiui/apis/library).

![](https://cdn.discordapp.com/attachments/585143304467906581/742271544373542962/unknown.png)

**2.** Create a new project in the dropdown at the top and give it a name (eg. "My Flarum").

![](https://cdn.discordapp.com/attachments/585143304467906581/742272208453500928/unknown.png)

**3.** Once on the project dashboard, search for `Google+ API` and enable it.

![](https://media.discordapp.net/attachments/585143304467906581/742271748493279302/unknown.png)

![](https://cdn.discordapp.com/attachments/585143304467906581/742272386879193130/unknown.png)

**4.** In the sidebar under "API Manager", select **Credentials**, then select the **OAuth consent screen** tab.

![](https://cdn.discordapp.com/attachments/585143304467906581/742272831638863942/unknown.png)

**5.** Choose **External** and fill out your app details such as name, logo etc... These will show up on the login screen.

![](https://cdn.discordapp.com/attachments/585143304467906581/742273073251745853/unknown.png)

![](https://cdn.discordapp.com/attachments/585143304467906581/742274640147251232/unknown.png)

- **Application name:** The name that will appear on the login screen. It should accurately reflect your application and be consistent with the application name users see elsewhere. Be careful not to use a name that suggests that your application is from Google or another company.
- **Application logo:** The logo your users will see on the login screen. It should make your app recognizable. Max image size is 1 MB. Allowed image formats are JPEG, PNG and BMP.
- **Support email:** This email address will be shown to users on the consent screen. You can use your email address or a Google Group email address that you manage.
- **Scopes for Google APIs:** Default settings are suitable for Flarum Google Login - you do not need to change them, and you shouldn't.

As for the other settings, you do not need to change them or modify them either.

**6.** In the **Credentials** tab, click on **Create credentials** button, and choose **OAuth client ID**.

![](https://cdn.discordapp.com/attachments/585143304467906581/742275682402304060/unknown.png)

![](https://cdn.discordapp.com/attachments/585143304467906581/742275979535187978/unknown.png)

**7.** A new page will appear:

![](https://cdn.discordapp.com/attachments/585143304467906581/742276287355289611/unknown.png)

- **Application type:** Select **Web Application**.
- **Name:** Not visible for end users, will be shown in the console. You should pick a name that will make you able to distinguish the app from your other apps.
  - **Authorized Javascript origin:** Will be your domain, eg. `https://myforum.flarum.cloud/`
- **Authorized redirect URIs:** Will be `https://myforum.flarum.cloud/auth/google` (notice it ends in `/auth/google` - this is important. Basically you just suffix your forum URL with `/auth/google`).

**9.** From the resulting OAuth client dialog box, you will be able to access the **Client ID** and the **Client Secret** will you will need to paste into the settings box of the Flarum Google Login extension.

![](https://cdn.discordapp.com/attachments/585143304467906581/742281362920308846/unknown.png)

!!! note "You might be looking for:"
  - **[Google Analytics](docs/How-to/Integrations/Google-Analytics/)**
  - **[Facebook Login](docs/How-to/Integrations/Facebook-Login/)**
  - **[GitHub Login](/docs/how-to/integrations/github-login/)**
  - **[Discord Login](/docs/how-to/integrations/discord-login/)**
  - **[Passport Login](/docs/how-to/integrations/laravel-passport/)**

