> ---
> - **Name**: Discussion views
> - **Author**: MichaelBelgium
> - **Flarum discussion** [https://discuss.flarum.org/d/7339-discussion-views](https://discuss.flarum.org/d/7339-discussion-views)
> - **Compatible with FreeFlarum**: Yes.
> - **Approximate time to setup:** 1 - 2 minutes
>
> ---

!!! quote "About"
    - (Obviously) tracks how much a discussion has been viewed and displays it per discussion on the discussion list;
      - However, this does not currently track unique views - every time the page loads, the view count goes up.
    - Adds 2 sorting options: popular and unpopular;
    - Adds 1 new permission where people can (re)set the viewcount of a discussion (default to admins).

This extension is pretty basic.
However, we do not recommend to use this extension as an Analytics tool. For that, we recommend you to check out the [Analytics](/docs/howto/extensions/analytics/) extension. 
This extension should only provide you and your users a small insight of what's popular on your forum.

!!! tip "Settings"
    - Track unique views: While this setting is enabled, only unique views will be added to the view counter. This means that only 1 view per person is added - you viewed it? Good, that's enough for the counter. Is disabled by default.
    - Abbreviate view numbers: Useful if you are getting many views. This makes high numbers appear shorter, for example '1000' would only appear as '1K'. Is disabled by default.
    - Enable (un)popular sort field: Controls whenever the extension should allow your users to filter discussions by popularity and unpopularity. Is enabled by default.
    - Enable view list: This adds a list to the sidebar of a discussion of who recently viewed the discussion. Is enabled by default.
    - Maximum viewlist items (default is 5): How many viewers should the view list (above) show?


**Here is how it looks in action:**
![Example demonstration of the "Discussion views" extension for Flarum](https://cdn.discordapp.com/attachments/585143304467906581/709348540597403658/unknown.png)
###### (Screenshot from [https://discuss.flarum.org/d/7339-discussion-views](https://discuss.flarum.org/d/7339-discussion-views))

!!! note "You might be looking for:"
    - #### **[About Extensions](/docs/how-to/extensions/about-extensions/)**
    - #### **[Analytics](/docs/how-to/extensions/analytics/)**
