# Discord Login

Many gamers own [Discord](https://discord.com), and not only them. If you want your members to be able to easily login with Discord, we got you.

!!! info "Setup"
    If we want our members to be able to register and login with Discord, we first need to create a Discord OAuth application.
    
    Go to [https://discord.com/developers/applications](https://discord.com/developers/applications). In top right corner, click on the blue "New Application" button.
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722355173837504553/unknown.png)
    
    A new popup will appear where you have to choose your application name. This can be anything, eg. "My forum name" or "My application" or so on. This will be visible on the auth page of Discord itself when you are logging in.
    
    After you have create a new application, navigate to the left sidebar and click on "OAuth2" button:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722356106403250206/unknown.png)

    Navigate to the "Redirects" section and click on "Add redirect":
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722356334380580864/unknown.png)
    
    The redirect will be `https://yourforumurl.com/auth/discord`. Once you have entered correct URL, hit the enter key on your keyboard to save your changes.
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722356548596269056/unknown.png)
    
    Now, look at the left sidebar again and click on "General Information" button with the house icon.
    
    Below the name of your application, there are 2 things: Client ID and Client Secret.
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722357403760459776/unknown.png)
    
    Copy them and enable the Discord login extension from your Admin panel. If you (already) did so, the following popup will appear:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/722357599282135040/unknown.png)
    
    Paste Client ID and Client Secret mentioned earlier in the appropriate fields and save your changes.
    
    If you did everything correctly, after you reload the main page of your forum (eg. F5), you should see the new option "Log In with Discord" in the login/register modal. You can verify that by going into incognito mode and accessing your forum from there.

    You can adjust the avatar of your application and name of the application to make the Discord auth page look better and so that people will know that it's your forum.
    
> ---
> #### __You might be looking for:__
> - **[Google Login](docs/How-to/Integrations/Google-Login/)**
> - **[GitHub Login](/docs/how-to/integrations/github-login/)**
> - **[Facebook Login](/docs/how-to/integrations/facebook-login/)**
> - **[Passport Login](/docs/how-to/integrations/laravel-passport/)**
>
> ---