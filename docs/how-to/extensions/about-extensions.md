# About Extensions

!!! question "What are extensions?"
    Extensions (or sometimes also "addons") are pieces of "scripts" that can extend your Flarum forum.
    They can add many useful things to your forum that aren't avaliabe in the default Flarum software.

    Here at FreeFlarum, extensions are treated a little differently. For example, if you want your extension
    to be added, you have to request it [here][request-your-extensions-here].

    [request-your-extensions-here]: https://github.com/gwillem/freeflarum.com/issues/new?assignees=&labels=%F0%9F%99%8B+Extension%2Ffeature+request&template=extension-request.md&title=%5BInsert+name+of+the+extension%2Ffeature+here%5D
    
    Currently, you cannot upload your own extension due to security reasons. You have to request it by using the link above and appropriate template.
    
    All extensions are provided for Flarum by the Flarum community. We can't fix issues that come from extensions - you have to ask the extension's author to fix it (submit an issue to their GitHub repository, for example).

!!! question "The extension I am looking for is not on the list. How can I add an extension?"
    If you want your extension to be added, you need to [request an extension][request-your-extensions-here].

!!! question "Can extensions break my forum?"
    Yes, some extensions aren't compatible with (Free)Flarum (they're outdated, for example).
    
    Please note that we do not check extensions every day if they are compatible or not (obviously we just aren't able to do that, sorry).
    If you see any error, you should [report it](https://www.github.com/gwillem/freeflarum.com/issues).

    Keep in mind that we do not develop extensions. Extensions are brought to you by the Flarum community.
    If there is a bug in extension itself, you will most likely need to contact the extension author for a fix.
    If he abandoned the extension for some reason, we're just sorry but we can't really help you with that.

!!! question "When will the X extension update?"
    We work hard to keep all of your forums as up-to-date as possible. But you can always request to update a specific extension [here][request-your-extensions-here].
    
!!! question "I need more help..."
    Don't hesitate to [open up an issue](https://www.github.com/gwillem/freeflarum.com/issues/new/choose) then. We will be happy to respond to you as fast as possible.
    You can also message us at the [official Discuss thread](https://discuss.flarum.org/d/7585-free-flarum-hosting-on-an-expert-platform-by-freeflarum-com).

# Enabling Extensions

!!! note "Extensions can be enabled through your admin interface:"

    1. Click on your profile in top-right corner (open up hamburger menu for mobile)
    2. Click on "Administration" (or just go to `https://your.forum.url/admin`)
    3. Find "Extensions" in the menu on left (click on top dropdown menu for mobile)
    4. Disable/Enable extensions by clicking on them.

You can modify your extension's settings by hovering on the extension and clicking on the three stacked dots icon. Then click on "Settings".

Or just locate your extension in the menu on right (if available).

You can request other Flarum extensions [here][request-your-extensions-here], however be sure to check if your extension:

- does not allow uploads of files directly to FreeFlarum, or run of custom PHP code & must be secure;
- is stable and up-to-date.

Further steps are shown in the issue template. It is very recommend to use the templates when creating a new issue.

For an extension to be honored, it should be requested by at least 2 people. 
If you find any bug in an extension, please report the bug to the author of the extension. We are not able to fix issues in an extension itself (unless it's a FreeFlarum bug. If you are not sure what is causing the bug, make an issue here and we'll try to find out).
List of all FreeFlarum extensions can be found [here](https://www.freeflarum.com/extensions).

# Accessing Extension's Settings

You can access an extension's settings by hovering on them in the extension list and clicking the three dots button.

![](https://cdn.discordapp.com/attachments/585143304467906581/741613821659185212/unknown.png)

!!! note
    Some extensions don't have any settings.
    
!!! note
    You cannot uninstall extensions from your forum, you can only enable/disable them. Extension's settings are persistent - this means that when you disable an extension, it will keep its settings again when you re-enable it.

!!! note "You might be looking for:"
    - **[Requesting an extension](/docs/faq/#can-you-add-extension-x)**
    - **[Extension List](/extensions)**
