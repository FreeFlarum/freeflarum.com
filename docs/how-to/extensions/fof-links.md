> ---
> - **Name**: FoF Links (`fof/links`)
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/18335-friendsofflarum-links](https://discuss.flarum.org/d/18335-friendsofflarum-links)
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** 3 minutes, depending on how many links you want to add. The link adding process is very simple and it takes just under 1 minute to add a new link.
>
> ---

!!! quote "About"
    With this extension, you can manage Flarum primary navigation links (ones that display in the top navigation bar, or the sidebar on mobile devices).

    ![](https://cloud.githubusercontent.com/assets/7693001/14650497/47c7c8a4-0681-11e6-9da3-3e99eb080f75.png)

    ![](https://cloud.githubusercontent.com/assets/7693001/14650497/47c7c8a4-0681-11e6-9da3-3e99eb080f75.png)
    
!!! info "Usage"
    The process of adding new links is very simple.

    If you want to add a new one, simply click on the "Create Link" button:

    ![](https://cdn.discordapp.com/attachments/585143304467906581/745213722426867752/unknown.png)

    A new menu will appear. Let's just quickly explain, what each setting does there.

    ![](https://cdn.discordapp.com/attachments/585143304467906581/745213969593008158/unknown.png)

    - **Title:** This is the text that will appear in the link button (the clickable text in the navbar).
    - **Url:** The [URL](https://www.verisign.com/en_US/website-presence/online/what-is-a-url/index.xhtml), eg. where the link takes you.
    - **Is it a Flarum link?** Whenever the link URL is a Flarum link (eg. something at your forum), or if it's an external site (outside of your forum).
    - **Open link in new tab** If this is checked, then the link will be opened in a new browser tab instead of the same one.
    
!!! question "Are paths supported, such as just /all instead of full forum URLs?"
    Yes, but actually not. Currently, the extension limits the URL to the actual full URL.
    The workaround is to open up your developer tools and remove the "type" attribute of the URL field. This is for advanced users only.

!!! note "You might be looking for:"
    - **[About Extensions](/docs/how-to/extensions/about-extensions/)**
