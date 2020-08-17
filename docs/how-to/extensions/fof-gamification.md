> ---
> - **Name**: FoF Gamification (`fof/gamification`)
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** [https://discuss.flarum.org/d/20671-friendsofflarum-gamification](https://discuss.flarum.org/d/20671-friendsofflarum-gamification)
> - **Compatible with FreeFlarum**: Yes
> - **Approximate time to setup:** 1 - 5 minutes
>
> ---

!!! quote "About"
    This extension adds upvotes, downvotes & ranks based on karma count for your forum. It is meant as a replacement for the "Likes" extension, so we recommend to disable that extension.
    
!!! question "How is hotness calcullated?"
    This extension allows your users to sort discussion by the "Hot" factor.
    The total amount of hotness is got between the amount of votes on the discussion and the posts inside of it. 
    Also, newer posts with the same amount of upvotes as another post will have more hotness, so time is also an influent factor.
    
!!! tip "Settings"
    This extension comes with a few settings:
    
    - **Convert Likes:** Will convert likes from the "Likes" extension into upvotes. Might take a while, depending on your like & post count.
    - **Ranks:** This section allows you to create custom user ranks (flairs) that will be shown next to their username, depending on their points (karma) count. Input the required number of upvotes, the name of the rank, and the hex color of the rank
    - **Votes:** Input any [Font-Awesome](https://fontawesome.com/icons?d=gallery&q=up) icon that is suffixed with -up and -down. Examples: `arrow`, `thumbs`, `chevron`
    - **Auto upvote posts when posted:** Will make the user that posted the post automatically upvote it.
    - **Enforce a vote rate limit (10 seconds):** Prevents users from spamming by upvoting and then downvoting posts rapidly.
    - **Show total votes of original post on discussions list:** Will put a number of total votes of a discussion in the discussion list.
    - **Rankings Page:** This extension also adds a ranking page for users with most points (karma). You can specify custom rank images and ignored users here.

!!! note "You might be looking for:"
    - **[About Extensions](/docs/how-to/extensions/about-extensions/)**
