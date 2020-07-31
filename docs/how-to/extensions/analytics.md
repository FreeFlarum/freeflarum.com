# Analytics

> ---
> - **Name**: Analytics (`flagrow/flarum-ext-analytics`)
> - **Author**: FriendsOfFlarum/Flagrow
> - **Flarum discussion**: [https://discuss.flarum.org/d/1983-flagrow-analytics-extension-tracking-user-visits](https://discuss.flarum.org/d/1983-flagrow-analytics-extension-tracking-user-visits)
> - **Compatible with FreeFlarum**: Yes.
> - **Approximate time to setup:** 7 - 20 minutes
>
> ---

!!! quote "About"
    The analytics extension allows you to integrate Google & Piwik's analytics system into your FreeFlarum forum.
    It is an easy-to-use solution for tracking user visits & page views on your forum. In this tutorial, I'll guide you through the
    basic setup.

!!! info "Usage"
    Once you have enabled the extension, a popup will appear:

    ![The popup](https://cdn.discordapp.com/attachments/585143304467906581/699218752532643850/unknown.png)

    This popup will let you choose, what analytics system you'd like to setup. You can use both, or just one.

# Setting up Piwik
    
!!! info    
    Let's try to setup Piwik. Just click on the switch to enable Piwik:

    ![Huh?](https://cdn.discordapp.com/attachments/585143304467906581/699219577242124328/unknown.png)

    It may seem confusing at first, but I'll try to explain it as best as I can so that you will understand.

    The Piwik service is located at [Matomo](https://matomo.org/). To better illustrate the purpose of this tutorial, I'm going to enter     the free 21 days trial, availabe [here](https://matomo.org/start-free-analytics-trial/)

    ![The 21 days trial signup form](https://cdn.discordapp.com/attachments/585143304467906581/699220831024447529/unknown.png)

    After you have entered your E-Mail address, you will receive a confirmation mail.

    ![Wohoo!](https://cdn.discordapp.com/attachments/585143304467906581/699221496505040986/unknown.png)

    My mail has arrived a couple of seconds after I signed up. If you don't see any new mail, check your spam folder too and please also    check if you spelt your address correctly. If the answer is yes, then just re-signup with correct mail address.
    The content of the mail should contain this part:

    ![Woaw... So I have... made it?](https://media.discordapp.net/attachments/585143304467906581/699222965686108170/unknown.png)

    Obviously, your mail content is going to look slightly different and you will receive your own login details.
    And now, the rest of the plan is simple - login to your account (the mail will pretty self-explain how do you do that).
    As soon as you login, a page like this one should appear:

    ![The page.](https://media.discordapp.net/attachments/585143304467906581/699224352389857362/unknown.png?width=1442&height=502)

    For us, this part is going to be important:

    ![The important part.](https://cdn.discordapp.com/attachments/585143304467906581/699224911352299530/unknown.png)

    Let's get back to your forum > Extensions. If you have already closed the settings popup, you can re-open it by hovering on the     Analytics extension and clicking on the three stacked dots that will appear on the right. The popup should reappear:

    ![The popup is back, and stronger than ever!](https://cdn.discordapp.com/attachments/585143304467906581/699226107345502258/unknown.png)

    Now all you have to do is just to fill your fancy information from above into the popup.
    You can change other optional options by your liking, I'm only going to cover the basics.

    The last thing we have to get is the API key/token. Navigate back to your Piwik's page and click on the gear icon in top right corner to open your account settings. Now, there should be a navigation menu on the left of the page. 
    Scroll down until you see "Platform" > "API". Click it.

    The token starts with `&token_auth=bunch_of_random_characters`.
    The end of the token will be censored with `*`. Just click on the box to reveal the true token and copy it. Then, paste it inside the last box of the Analytics settings popup (back at your forum extension settings).

!!! note "Note" 
    Do NOT include the `&token_auth=` part (eg. include only the bunch of random characters in the "Authentication Token" box).

!!! tip "Finished?"
    After you are done, click "Save". Your changes should be applied automatically.
    If all went well and you didn't receive any error, your Piwik integration should now work and you should start to receive incoming visitor data.
    Everything is automatic and doesn't require any manual interaction. You can now go to the main page of your forum (notice that it might take longer to load). If you now go back to your main Piwik page, a data charts and all the stuff you want should be created.
    You did it. If you have any questions, don't hesitate to open a [new issue](https://github.com/gwillem/freeflarum.com/issues/new/choose/).

# Setting up Google Analytics

!!! info
    Piwik is great, but what if you want to setup Google Analytics? Well, you can and the setup is kind of easier, because you need only 
    1 authentication key to make it work. And the best part - it's absolutely free (no trial).
    
    Navigate to [this page](https://analytics.google.com/analytics/web/provision/#/provision). You should see something like this:
    
    ![The page.](https://cdn.discordapp.com/attachments/585143304467906581/699542547252379668/unknown.png)
    
    Click on the blue button "Setup for free". Now this will show:
    
    ![The show](https://cdn.discordapp.com/attachments/585143304467906581/699542937331302420/unknown.png)
    
    Just fill in some friendly name for your Analytics account. You can also modify the other settings, but as for me I'll leave them alone.
    When you're done, click on blue "Next" at the bottom of the page.
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/699543342656258068/unknown.png)
    
    We want to measure a webpage, which is the default option - just click on "Next" and don't bother with the other options - these are made for Android and iOS apps.
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/699544152903254056/unknown.png)
    
    This is probably the hardest part of the entire setup - and by that I mean the easiest. 
    Just fill in your forum URL (if you use custom domain with FreeFlarum, you can use that domain, but it doesn't really matter. If you want to keep a good feeling after your domain expires, type the default `flarum.cloud` domain.
    
    The next part is important - accepting the ToS:
    
    ![ToS Agreement](https://cdn.discordapp.com/attachments/585143304467906581/699544856674041946/unknown.png)
    
    Be sure to select YOUR country when accepting the ToS. And be sure to accept it.
    
    After you have accepted the ToS, you will be redirected to the main Analytics page:
    
    ![BOO!](https://cdn.discordapp.com/attachments/585143304467906581/699545465678594158/unknown.png)
    
    Aim for the "Tracking ID". This is all we need. Copy it and go back to your forum. 
    If you have checked the "Usage" box for Piwik above, you probably already know what to do - go to your Analytics extension settings, enable "Google Analytics" and paste the Tracking ID into the Tracking Code ID box:
    
    ![Paste the ID into the box](https://cdn.discordapp.com/attachments/585143304467906581/699546563214835742/unknown.png)
    
    And that's all. No seriously, you are done with the configuration. Just be sure to "Save changes", which will apply automatically.
    
    Now, if you have done everything correctly, you might want to go to your forum's main page. New data will come eventually into your Google Analytics account.
    
!!! bug "Troubleshooting"
    If there is no sign of any data, you might have a tracker blocker extension installed in your browser. Some antiviruses block trackers like Google Analytics and Piwik, mostly because of security reasons.
    You could also try to browse your forum in incognito mode.
    
    If any error pops up when you are doing the configuration, or it appear anywhere on your forum, please [open a new issue](https://github.com/gwillem/freeflarum.com/issues/new/choose), so that we can help you. Be sure to include as many details as possible.
    
And that's everything you need to know about the Analytics extension. One small note for the end of this story - if you want to quickly check your Analytics right from your forum, you can open up "Analytics" usually at the bottom of your sidebar of the Administration section:

![Here we go!](https://cdn.discordapp.com/attachments/585143304467906581/699548329813475358/unknown.png)

If you open up the section, you should see a lot of data of your visitors. You can now see everything!

!!! note "You might be looking for:"
    - #### **[About Extensions](/docs/how-to/extensions/about-extensions/)**
    - #### **[Google Analytics (the "old" way, or if the above doesn't fit your needs)](/docs/how-to/integrations/google-analytics/)**
