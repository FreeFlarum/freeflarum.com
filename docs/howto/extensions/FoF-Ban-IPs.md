> ---
> - **Name**: FoF Ban IPs
> - **Author**: FriendsOfFlarum
> - **Flarum discussion** N/A
> - **Compatible with FreeFlarum**: Yes.
> - **Approximate time to setup:** 2 - 5 minutes, depends on how much IP addresses do you wish to be blacklisted
>
> ---

!!! quote "About"
    This extension allows you to ban a particular IP address from your forum. Banned IPs will be unable to register new accounts or login to old ones.
    
!!! question "Why would I want to ban IP addresses when I can suspend/ban/remove members?"
    It's because that some people will not learn when it means to stop and they will continue to create new accounts at your forum just to annoy you. This extension will block
    their IP address so that the same IP cannot create more accounts and cause more mess. You can learn more about IP addresses [here](https://whatismyipaddress.com/ip-address] or [here](https://en.wikipedia.org/wiki/IP_address).
    
    However, those bans can be evaded by a [VPN](https://us.norton.com/internetsecurity-privacy-what-is-a-vpn.html). Also, if you have a dynamic 
    IP address which changes over time, you can theoretically bypass those bans too. However, if you want more control over your community postings, you should
    always use more moderation extensions, such as [Approval](https://www.freeflarum.com/docs/howto/extensions/Approval/) and more
    
!!! info "Setup"
    First of all, if you want to ban a member, you need to get the actual IP address of them. To get an IP address of an user that submitted a post, click on the date the post was sent (it is right next to their username in the post):
    
    ![Click on the date next to member's username to obtain his IP](https://cdn.discordapp.com/attachments/585143304467906581/721333080887132160/unknown.png)
    
    The IP address always consists of numbers and dots. Copy the whole address (such as `127.0.0.1`).
    
    Now, if you want to blacklist that IP, go to your Ban IPs extension settings:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721333880795168829/unknown.png)
    
    You should see something like this:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721334115978444841/unknown.png)
    
    The whole blacklisting process is actually pretty simple. Once you click on the "Ban IP" button, a new modal popup will be shown:
    
    ![](https://cdn.discordapp.com/attachments/585143304467906581/721334460641181716/unknown.png)
    
    The actual IP address goes in the field "IP Address", and "Reason" is the reason for the ban.
    Once you filled in someone's IP address, click the "Check" button. This will search for member(s) with the IP address you specified to verify if you indeed want to
    block them. If no matches are found, it will return "Noone will be banned". This is a common case, because IP addresses tend to change for most people over some time.
    
    Again, we recommend you to use different moderation tools and you should use IP bans only if you really need to, as they are not really reliable.
    
!!! note "You might be looking for:"
    - #### **[About Extensions](https://www.freeflarum.com/docs/howto/extensions/About-Extensions/)**
    - #### **[Approval](https://www.freeflarum.com/docs/howto/extensions/Approval/)**
