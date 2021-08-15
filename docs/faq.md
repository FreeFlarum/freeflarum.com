## General Issues

#### Can you add extension X?

We will add most extensions based on [requests](https://github.com/gwillem/freeflarum.com/issues). However, some extensions are incompatible with the FreeFlarum platform. For example, we can not install anything that runs custom PHP code (for security).

You can see all pending requests here or add your own: [Github](https://github.com/gwillem/freeflarum.com/issues). Extensions with more upvotes will be prioritized.

#### How many users does FreeFlarum support?

FreeFlarum is meant for smaller forums that would like to start a community and supports up to 250 users. When you have more users _or_ your forum negatively affects the performance of other forums, we may ask you to move your forum elsewhere, and we also reserve the right to cancel your forum, if necessary.

Read our [Terms & Conditions](/docs/legal/terms), article 3. for more information

#### How do I delete my forum?

To take your forum down, go to your [FreeFlarum settings](/settings) and click on the red "DESTROY" button at the bottom of the page.
All archived forums will be kept for 6 months, then they're deleted forever. If you'd like to destroy your forum permanently sooner, please [E-mail us](mailto:info@freeflarum.com).

#### Can I pay to remove the "Powered by FreeFlarum" footer for my or other forum?

FreeFlarum doesn't have paid accounts and runs entirely on donations. Those are very much welcome, because running this service takes many hours of our unpaid time. And servers aren't free to rent either ;) 

Should you make a voluntary donation, we say "thank you!", will name our first born after you and will remove the FreeFlarum footer link on your forum. The amount of the donation is entirely up to you: how much is FreeFlarum worth to you?

You can learn more at the [Donation page](/settings/donate).


!!! note
    If you want to donate more, just donate a custom amount to the following PayPal E-Mail: info@freeflarum.com.


!!! warning
    Don't forget to add your forum name (part before `.flarum.cloud` or `.freeflarum.com`) in the donation message, or else we won't know which footer to remove.


!!! note 
    If you donate less than $5, Paypal will take nearly all of it as "transaction fees".
    
You may also remove footers on the behalf of other forums. All donations are processed manually - usually within 24 hours from the time the invoice E-Mail has arrived to our mailbox. If your footer is not removed within a day, it means that the receipt didn't arrive or we overlooked it. If that's the case, please E-mail us the PayPal receipt and we will sort it out.

For a FAQ, please read the [Donation FAQ](#donation-faq) below.

---

## Donation FAQ

#### Why are you providing "perks" based on the amount donated. Why not make a paid plans instead?

[FreeFlarum's goal](/docs/about) is to be a free service that allows users across the planet to create their own online community, without any fees or hidden payments, privacy or data locking, etc.

A paid plans system is not what we are looking for in order to keep FreeFlarum up and running. It would make people think that we are a commercial service, which we aren't. Soon, they might start to have higher expectations on us, in terms of support speed and forum speed. We can't guarantee you that. FreeFlarum is run by a small team of voluentary people that operate it in their free time. We can't offer people what we can't.

Since we aren't being paid for what we do, a donation is always welcome. We need money in order to keep FreeFlarum up and running. But for that, we need some income. So we've decided to create a donation tier system. Donating is optional and will provide the forum some perks in return (so that people are actually willing to donate). These perks should not significantly make a difference between other forums (in terms of support or forum speed, for example). They are merely a token of gratitude, and for people that want a bit more features. They won't give you any sort of forum performance boost, or separate server. They will give you just exactly what's listed at the [Donation page](/settings/donate).

#### I have donated. Will I get faster response times from support (or any other benefits not listed at the donation page)?
No, you get what you have donated for only.

#### My forum was removed, and I am a donor. Will I get a refund?
No, we don't do refunds.

#### Can I donate more?
Yes, it will be added to the amount that you've previously donated, and you will advance to the tier that corresponds to the new donation amount.

#### I am able to upload files locally. What if the uploaded files take too much disk space of yours?
We will ask you to limit file uploads. At critical values (point when the disk is too full and disallows FreeFlarum to operate properly), we will purge the uploaded files and ask you to self host your forum instead. I hope that you understand that FreeFlarum is still a free service and we are not a commercial entity - therefore, we can't guarantee you a limitless hosting solution for Flarum.

---

## Mail issues

#### How can I send all users an E-mail?

Sending mass-mails is currently not supported due to the risk of a spam attack, which would quickly mark our mail server as "spam" and would cost us a bad domain reputation.

#### My E-mails won't send. Why?

This is often caused by wrong mail settings.
Please, review [this guide](/docs/tutorials/configuring-mail/) if you need help setting up mails.

Additionally, you can contact still [contact us](mailto:info@freeflarum.com).

---

## Software updates

#### What happens when Flarum has a new release?

Small (security) releases will be applied right away. You shouldn't have to worry about that!

You won't have to worry about bigger releases either, as FreeFlarum takes care of all data migration. 

There is one caveat though: after a release has been published by Flarum, FreeFlarum waits until the most popular extensions have been updated to work with the new release. If extensions haven't been updated after 3 weeks of a new release, the extension will be deprecated and removed from FreeFlarum. If a compatible version is released, you can [request the extension to be re-added](https://github.com/gwillem/freeflarum.com/issues).

---

## Other questions

#### Can you hire me to work for FreeFlarum?

FreeFlarum does not do consultancy, as it distracts from our objective to build the best platform. But there are several highly skilled Flarum developers available on the [Flarum forum](https://discuss.flarum.org) that you could contact.

#### Will you help us if we outgrow your platform?

If you need custom modifications and/or want to move away for any other reason, FreeFlarum happily shares the stack and configuration settings with your engineers for a smooth transition. Our objective is happy Flarum users, either on our platform or elsewhere.

#### Where are your servers located?

Currently we use Cloudflare behind the main  website and Hetzner. If growth continues, we plan to expand to Asia and the US to improve loading times across the globe.
