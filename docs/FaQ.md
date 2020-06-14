## __General Issues__

#### Can you add extension X?

We will add most extensions on requests. However, some extensions are incompatible with the FreeFlarum platform. We can not install Bazaar or anything that accepts file uploads or runs custom PHP code. For an extension request to be honored, it should be upvoted by at least two persons. Here, you can see all pending requests or add your own: [Github](https://github.com/gwillem/freeflarum.com/issues).

#### How many users does FreeFlarum support?

FreeFlarum is meant for smaller forums and supports up to 250 users. When you have more users _or_ your forum negatively affects the performance of other forums, we may ask you to move your forum elsewhere. 

#### How do I delete my forum?

To delete your forum, go to your [FreeFlarum settings](/settings) and click "Destroy Forum".

#### Can I pay to remove the "powered by FreeFlarum" footer?

FreeFlarum doesn't have paid accounts and runs entirely on donations. Those are very much welcome, because running this service takes many hours of our unpaid time. And servers aren't free to rent either ;) 

Should you make a voluntary [donation](/donate), we say "thank you!", will name our first born after you and will remove the FreeFlarum footer link on your forum. The amount of the donation is entirely up to you: how much is FreeFlarum worth to you? Please send your forum name (the part before .freeflarum.com) in the donation message. 

!!! note 
    If you donate less than $5, Paypal will take nearly all of it as "transaction fees".

---

## __Errors & glitches__

#### I got error: "Error booting Flarum: Return value of Flarum"

This happens incidentally when new extensions are added to the FreeFlarum forum. It will resolve quickly within a few minutes.

#### I get an error when signing up or replying to an existing post

This is most likely caused by the wrong mail settings. You should reset these to their defaults, which you [can find here](/docs/How-to/Configuring-Mail/). Notably, do not use the mail driver **mail** which will crash your forum, but use **smtp** instead.

#### The post composer seems broken on mobile

When the buttons, like tags, recipients and polls take up the entire space and you can't write the post, see [this discussion](https://discuss.flarum.org/d/21015-post-box-on-mobile/5) for more info.

---

## __Mail issues__

#### How can I send all users a mail?

Sending mass-mails is currently not supported. Because it is so easy to start a forum, our servers would quickly be taken over by spammers. 

#### My mails won't send. Why?

This is often caused by wrong mail settings.
Please, review [this guide](/docs/howto/Configuring-Mail) if you need help setting up mails.

Additionally, you can contact still [contact us](#contact-us).

---

## __Software updates__

#### What happens when Flarum has a new release?

Small (security) releases will be applied right away. You shouldn't have to worry about that!

You won't have to worry about bigger releases either, as FreeFlarum takes care of all data migration. 

There is one caveat though: until the Flarum API is stable (planned for v0.2), extensions will break upon a major Flarum upgrade. So after a release, FreeFlarum waits until the most popular extensions have been updated to work with the new release. If extensions haven't been updated after 3 weeks of a new release, the extension will be deprecated and removed from FreeFlarum. FreeFlarum will notify any users of such extensions so an alternative solution can be found.

#### Why has not FreeFlarum updated yet?

Please, be patient. Big things grow slowly and we have a life too. It may take up to 8 weeks for FreeFlarum to implement new Flarum releases (usually much faster though).

---

## __Other questions__

#### Can I import users from another forum?

Flarum does currently not support adding users from the admin panel or API, there's [an issue for that](https://github.com/flarum/core/issues/885). However, you can use the [Doorman](https://discuss.flarum.org/d/17845-doorman-by-reflar) extension to invite people.


#### Can we hire you for a custom job?

FreeFlarum does not do consultancy, as it distracts from our objective to build the best platform. But there are several highly skilled Flarum developers available on the Flarum forum.

#### Will you help us if we outgrow your platform?

If you need custom modifications and/or want to move away for any other reason, FreeFlarum happily shares the stack and configuration settings with your engineers for a smooth transition. Our objective is happy Flarum users, either on our platform or elsewhere.

#### Where are your servers located?

Currently we use Upcloud servers in London, Hetzner servers in Nuremberg and TransIP servers in Amsterdam for offsite backup. If growth continues, we plan to expand to Asia and the US to improve loading times across the globe.

#### How can I use tags?

You have to enable the tag system first. Log in, go to Admin -> Administration -> Extensions -> Scroll to "Tags" and enable it. 

> ---
> ### __Contact us:__
> Ideas are always welcome. If it is not on [the roadmap](/docs/Roadmap/), post feature and extension requests as a new [Github issue](https://github.com/gwillem/freeflarum.com/issues). Please post questions about FreeFlarum in the main [discussion on flarum.org](https://discuss.flarum.org/d/7585-freeflarum-com-now-open-for-beta-access) and questions about Flarum in general in the Support section.
>
> ---
