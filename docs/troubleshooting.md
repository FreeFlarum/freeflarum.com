# <p align="center">Troubleshooting</p>

> ---
> **<p align="center">Sometimes your forum might run into some issue. Although the error might be looking scary, in the end it could be just a simple problem with simple solution.</p>**
>
> ---
> <p align="center">We have created this troubleshooting guide for you to fix the most common issues of your forum without the need of <a href="https://github.com/gwillem/freeflarum.com/issues">creating a new issue</a>.</p>
>
> ---

!!! warning
    It is recommended to always contact us about any issue you might have. Sometimes it can be a FreeFlarum issue, but sometimes it might also be issue with Flarum or any of it's extensions. 
    We, sadly, can't fix any issues with extensions - issues like this have to be reported to the extension author for assistance to fix 
    your problem.
    
!!! question "The language extension(s) are broken. Instead of the actual translation, string IDs appear (for example, instead of the log in button, we can see something like 'flarum.login.example' in the place of the "Log In" text.)"
    This is currently probably the most common Flarum bug. We sadly don't have the tools to monitor, track and debug these issues,
    but that doesn't mean that there is no fix.

    First of all, try clearing your Flarum cache. If this doesn't help, try out different browser or clear your browser cache to see if it's not a problem on your side.
    If that didn't help either, check if you have the English language pack enabled. This extension should be always enabled, as it is basically the default language for Flarum.

    Lastly, it might be an extension conflict. We cannot resolve this kind of issue, and bugs related to extensions should be
    reported to their authors.
    
    This issue was reported [here (#99)](https://github.com/gwillem/freeflarum.com/issues/99), [here (#109)](https://github.com/gwillem/freeflarum.com/issues/109) and also [here (#112)](https://github.com/gwillem/freeflarum.com/issues/112).
    Please, check those issues - they might help you to fix the problem.
    
!!! question "When I try to create a new discussion or post, an error shows up and the discussion is sent. Or it is sent after I reload the page, but the error still appears."
    This issue appeared when the Tags extension was disabled (as can be seen [here](https://github.com/gwillem/freeflarum.com/issues/102). However, some other factors might cause this issue.
    Sadly, this problem is somewhat a mysterious one, due to wide variety of extensions at FreeFlarum that might be causing this issue. If you still have concerns, please [open an issue](https://github.com/gwillem/freeflarum.com/issues).
    
!!! question "After upgrading to new version of Flarum, one or more extensions do not work correctly."
    This issue occurs when Flarum gets a new update, and some changes in the API made the extension to stop working or behaving correctly.
    Again, we are not responsible for extensions. They are community provided ones. If an extension stops working, we have no other choice but remove it from all FreeFlarum forums.
    You must then report the issue to the extension author. You can see FreeFlarum's extensions listed and documented [here](/docs/how-to/extensions/analytics/).
    After the issue has been fixed, you can request the extension to be re-added to FreeFlarum [here](https://github.com/gwillem/freeflarum.com/issues).
    
!!! question "When I navigate to my forum, I see an error instead."
    Different errors mean different solutions for them. Please, [open a new issue](https://github.com/gwillem/freeflarum.com/issues) so we can look into that.
    Do not forget to include the full error in your report.

    Note: Errors might appear when FreeFlarum is under a maintenance (eg.: updating all extensions. If that's the case, all you can do is wait and the error should be fixed). You can check for FreeFlarum updates at our [official Discuss thread](https://discuss.flarum.org/d/7585-free-flarum-hosting-on-an-expert-platform-by-freeflarum-com/).
    
!!! question "I have enabled an extension and when I now try to open my forum, I see an error instead. I bricked my Flarum."
    First, try to nagivate to your Administrator panel through the direct URL (eg. `https://yourforumname.flarum.cloud/admin#/`) and try to disable the extension from there. There is a chance that the panel was unaffected.
    If same error shows there and you can't access any of the pages at your forum, please [open a new issue](https://github.com/gwillem/freeflarum.com/issues) and include the bugged extension name in your
    report along with the error message so we can take care of it.
