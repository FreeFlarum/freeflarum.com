> ---
> - **Name**: FoF Masquerade (`fof/masquerade`)
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/5791-masquerade-by-friendsofflarum-the-user-profile-builder](https://discuss.flarum.org/d/5791-masquerade-by-friendsofflarum-the-user-profile-builder)
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** Depends on how much user fields you want to configure. You may need at around 10 minutes.
>
> ---

!!! quote "About"
    The user profile generator. Allows administrators to create a custom user profile fields they can fill in.

    Includes:

    - New tab on user profile to show masquerade profile with answers provided to configured fields.
    - New tab on user profile for user to set up a masquerade profile.
    - Add, update, delete and order profile fields in admin.
    - Permission who can have a masquerade profile.
    - Permission who can view a masquerade profile.
    - Allowing you to configure forced redirection to make a (email verified) user complete the required fields.

!!! info "Usage"

    Enable the extension. Visit the masquerade tab in the admin to configure the fields.

    ![](https://cdn.discordapp.com/attachments/585143304467906581/745926551677435957/unknown.png)
    
    - **Force user to complete profile:** If this is turned on, the extension will force users to complete their profile upon verifying their E-Mail address/registering.

    Be aware that the "Add new field" and "Edit field `X`" toggle the field form when clicked.

    ![](https://cdn.discordapp.com/attachments/585143304467906581/745927013314986054/unknown.png)

    - **Field name:** The publicly visible field name.
    - **Field description:** Optional setting that allows you to explain the usage/functionality of the field.
    - **Icon:** Shows an icon in front of values entered by the user. For a reference of available icons, check the [FontAwesome website](https://fontawesome.com/icons?m=free). Use icon names with the "fa-" prefix, like "fas fa-info".
    - **Show answer to this field in user bio:** If this is turned on, the extension will display the user selected answer in their bio at their profile.
    - **Mark field obligatory:** If this is turned off, the field will be optional (effective when you have turned on the option to "Force user to complete profile").
    - **Type:**
    - - **URL:** A valid URL address must be put in the field by the user.
    - - **Email:** A valid E-Mail address must be put in the field by the user.
    - - **Checkbox:** Represents the classic checkbox/tickbox. Users can check it or uncheck it (make it empty).
    - - **Dropdown:** Allows you to configure more options that can be selected from a dropdown menu.
    - - **Advanced:** Advanced validation using the [Laravel validation rules](https://laravel.com/docs/5.2/validation#available-validation-rules), eg: "string|min:5" or "url".

    Make sure to configure the Masquerade permissions on the Admin Permissions tab to suit your needs.
    
    - **View masquerade profile:** Allows users to be able to view other's "Masquerade" profiles.
    - **Have masquerade profile:** Allows users to have a "Masquerade" profile.
    
    Here's how it looks in action:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/745936283703967855/unknown.png)
    
    Other users will see this:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/745936431351988325/unknown.png)

!!! note "You might be looking for:"
    - **[About Extensions](/docs/how-to/extensions/about-extensions/)**
