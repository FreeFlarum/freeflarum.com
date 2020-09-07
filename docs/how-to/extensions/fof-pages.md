> ---
> - **Name**: FoF Pages (`fof/pages`)
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/18301-friendsofflarum-pages](https://discuss.flarum.org/d/18301-friendsofflarum-pages)
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** N/A (you can setup how much any-size pages you want, so the time varies)
>
> ---

!!! quote "About"
    This extension allows you to create custom static pages in Flarum.

    ![](https://cloud.githubusercontent.com/assets/7693001/14619084/f2d5d338-05ca-11e6-97ff-42fc1967b602.png)

!!! info "Usage"
    Enable the extension and navigate to the extension admin area.
    
    ![](https://media.discordapp.net/attachments/585143304467906581/752058514490392716/unknown.png)
    
    Click on the "Create page" button.
    
    From there, a new popup modal will open:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/752058782196039710/unknown.png)
    
    We've got a few settings to modify:

    - **Title** - The title of the page that will be displayed on the top of the page.

    - **Slug** - The ID of the page that will be displayed in the page URL (eg. `./p/<numeric id, not editable>-<slug>` -> `./p/2-slug`).

    - **Content** - The content of the page. Defaults to Markdown, HTML can also be used (see options below), but not both.

    - **Save as draft** - The page will be saved, but will not be displayed/accessible, so that you can edit it later.

    - **Restrict access (configure who can access in the Permissions tab)** - Allows you to restrict the visibility/access of this page to certain groups from the "Permissions" Administration tab.

    - **Enable HTML** - Allows you to use HTML in the page "**Content**" instead of Markdown.
    
    We've also got a few buttons in the page list:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/752060856212390017/unknown.png)
    
    - **Pencil button/Edit** - Opens the page creation modal, allows you to edit the page.
    - - In addition to all the options from the page creation modal, there is also a button to "**Delete page**", which is the same as the "**X**" button in the options below.
    - **Home button/Mark as homepage** - Marks the page as the homepage of your forum, so users will see that page as the main page of your forum.
    - **Eye button/See the page** - Opens the page in a new window in your browser, allowing you to see the page.
    - **X Button/Delete the page** - Opens confirmation alert box and allows you to delete the page. This action cannot be undone!
    
!!! question "Can I add links to the pages in the navigation bar for quick access?"
    Yes, you can use [FoF Links](https://www.freeflarum.com/docs/how-to/extensions/fof-links/) to link to your page URL.

!!! note "You might be looking for:"
    - **[About Extensions](/docs/how-to/extensions/about-extensions/)**
    - **[FoF Links](https://www.freeflarum.com/docs/how-to/extensions/fof-links/)**
