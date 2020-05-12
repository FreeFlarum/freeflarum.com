> ---
> - **Name**: Embed (`flarum/embed`)
> - **Author**: Flarum
> - **Flarum discussion** N/A
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** 0 - 2 minutes
>
> ---

!!! quote "About"
    This extension allows your Flarum discussion to be embed for your other website.
    
!!! question "Setting up"
    The basic embed code looks like this:
    
    `<iframe src="https://your-forum-name.flarum.cloud/embed/X"></iframe>` 
    
    where `X` is your discussion ID.
    
!!! question "Where do I find my discussion ID?"
    It is actually surprisingly easy. Open the discussion you want to be embed and copy it's URL.
    You should get something like this: 
    
    `https://your-forum-name.flarum.cloud/d/`**X**`-some-text-in-case-you-use-another-extension`
    
    ...where `X` is your discussion ID.
    
!!! question "The iFrame is way too small."
    You can adjust all the properties iFrame currently supports, and customize it's width, height, CSS, ID, etc... Learn more about iFrames [here](https://www.w3schools.com/html/html_iframe.asp)
    
    Please, keep in mind that the `src` attribute of the iFrame must always be 
    
    `https://your-forum-name.flarum.cloud/embed/X`
    
    (eg. `src="https://your-forum-name.flarum.cloud/embed/X"`), else it won't work.

!!! question "What is the difference between regular and embed discussion?"
    The embed discussion removes/modifies certain page elements, such as the navigation bar, that opens the link in new tab instead of inside the iFrame, or the Discussion navigation bar on the right, which is completely removed to make the page look cleaner and better.
    
!!! question "What is this extension useful for?"
    Mainly for embedding Flarum discussions. There are many uses for that, you could for example integrate it with your blog and use a discussion as blog comments, or just to show articles from your forum on your website. 
    
    I'm sure that if you get creative, you will find better uses ;)

!!! note "You might be looking for:"
    - #### **[Comming Soon]()**
