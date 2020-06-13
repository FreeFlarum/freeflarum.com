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
    
!!! question "The language extension(s) are broken. Instead of the actual translation, string IDs appear (for example, instead of the log in button, we can see something like 'flarum.login.example' in the place of the "Log In" text.)
    Issues like this mostly happen when you have disabled the English language pack, which is required for untranslated strings to fallback to the English ones (found in the English pack). When the English extension is disabled,
    then when some translation extension has no translation for specific text (string), it cannot fallback to the English one, since English ones are disabled.
    This issue doesn't happen often and shouldn't even happen in most cases, however it is recommended to always have the English language enabled, so in case of translation mistake, you can see the original text in English.
    
    This issue is also a common browser cache problem, where your browser caches the translation strings, therefore it shows old bugged ones.
    
    This issue was also reported [here](https://github.com/gwillem/freeflarum.com/issues/99).
    
!!! question "When I try to create a new discussion or post, an error shows up and the discussion is sent. Or it is sent after I reload the page, but the error still appears."
    This issue appeared when the Tags extension was disabled (as can be seen [here](https://github.com/gwillem/freeflarum.com/issues/102). However, some other factors might cause this issue.
    Sadly, this problem is somewhat a mysterious one, due to wide variety of extensions at FreeFlarum that might be causing this issue. If you still have concerns, please [open an issue](https://github.com/gwillem/freeflarum.com/issues).
    
!!! question "After upgrading to new version of Flarum, one or more extensions do not work correctly."
    This issue is a common one. It occurs when Flarum gets a new update, and some changes in the API made the extension to stop working or behaving correctly.
    Again, we are not responsible for extensions. They are community provided ones. If an extension stops working, we have no other choice but remove it from all FreeFlarum forums.
    You must then report the issue to the extension author. You can see FreeFlarum's extensions listed and documented [here](https://www.freeflarum.com/docs/howto/extensions/Analytics/).
    After the issue has been fixed, you can request the extension to be re-added to FreeFlarum [here](https://github.com/gwillem/freeflarum.com/issues).
    
!!! question "When I navigate to my forum, I see an error instead."
    Different errors mean different solutions for them. Please, [open a new issue](https://github.com/gwillem/freeflarum.com/issues) so we can look into that.
    Do not forget to include the full error in your report.
    
!!! question "I have enabled an extension and when I now try to open my forum, I see an error instead. I bricked my Flarum."
    First, try to nagivate to your Administrator panel through the direct URL (eg. `https://yourforumname.flarum.cloud/admin#/`) and try to disable the extension from there.
    If same error shows there and you can't access any of the pages at your forum, please [open a new issue](https://github.com/gwillem/freeflarum.com/issues) and include the bugged extension name in your
    report so we can take care of it.
