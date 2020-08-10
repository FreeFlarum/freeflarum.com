> ---
> - **Name**: FoF Byōbu (`fof/byobu`)
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/4762-friendsofflarum-by-bu-well-integrated-advanced-private-discussions](https://discuss.flarum.org/d/4762-friendsofflarum-by-bu-well-integrated-advanced-private-discussions)
> - **Compatible with FreeFlarum**: Yes.
> - **Approximate time to setup:** 1 - 4 minutes
>
> ---

!!! quote "About"
    This extension adds private discussions to your forum. Forum members can select recipients and only they can see the actual discussion.
    Private discussions are essential for almost every forum nowadays, and we highly recommend you to setup this extension so your members can have a way to privately communicate between each other.
    
!!! tip "Settings"
    - Display a link to Private Discussions on the index page: When this option is enabled, a link from the forum main nav items to Private Discussions will be displayed. Enabled by default.
    - Specify the tag that all private discussions must use: This forces all private discussions to use a specific tag. Select "- No restriction -" to allow users to select their own tag. This applies to newly created private discussions only. Not restricted by default.
    
!!! info "Usage"
    Once you have enabled the extension from your admin panel, next thing is to setup the permissions for your members so they can actually use
    the private discussions. You can do so by going to the "Permissions" section of your forum. There are a few permissions:
    
    - **Create private discussions with users/groups:** This will allow the group to create a private discussion with users/groups.
    - **Create private discussions with groups:** Recommended for admins only. Allows the group to create a private discussion with an user that blocked private discussions.
    - **Edit users/groups partaking in private discussions:** Allows the group to edit recipients in a private discussion.
    - **View private discussions of other users if flagged:** Recommended for admins only. If a private discussion is flagged by an user participating in it, then the group that has this permission is allowed to view the flagged private discussion.
    
    Once you have carefully set the permissions for your groups, it's time to have a look at your discussions. If you have just enabled the extension, they'll be obviously empty.
    You can view all of your private discussions by clicking on your profile in the top right corner of your forum and selecting "Private Discussions":
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721340260872749196/unknown.png)
    
    You can then click on a button "New Private Discussion" to create a new one. Once clicked, this popup will appear:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721341034294018048/unknown.png)
    
    Here you can select the recipients (people that will basically see the discussion and that will be able to reply to it, assuming they have the correct permissions).
    
    Once selected and "OK" button was clicked, you can continue and write the discussion in the post composer, as usual. Simple as that. Private Discussions are very similar to the normal ones, except only a few
    chosen people see them.
    
    When the extension is posted, a few more options come under the "Reply" button as well:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721341983163023391/unknown.png)
    
    - **Edit Recipients:** Allows you to edit the participants of the discussion. You need the `Edit users/groups partaking in private discussions` permission to be able to use this feature.
    - **Make this discussion public:** Makes the discussion public so that everyone can see it.
    - **Leave this private discussion:** You will leave the discussion completely, as if you basically remove it for yourself. You won't be able to view that discussion further or reply to it. This will not remove the discussion completely thought - other recipients will still be able to see it.
    
    Depending on what extensions you have installed that modify discussions, you may use features from them in private discussions, such as the Tags extension.
    
!!! note "You might be looking for:"
    - **[About Extensions](/docs/how-to/extensions/about-extensions/)**
