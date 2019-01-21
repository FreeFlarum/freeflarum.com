# FAQ

## Can you add extension XX ?

Currently, there is an extension freeze, due to the pending release of Flarum beta8. Given that beta8 will break all existing extensions, it will slow the upgrade process if extensions are added that won't be made compatible in time. See also the release procedure below. 

However, you can always submit an extension request as a [Github issue](https://github.com/gwillem/freeflarum.com/issues), and it will be considered once beta8 is out.

## Can you remove my test forum?

Currently there is no button for that, but please do this:

1. Add - as an admin - a post to your forum that says "DELETE THIS FORUM"
1. Send request to info@freeflarum.com, stating your forum name and we will purge it manually

## Can I pay to remove the ads?

Ad-free, premium plans are expected for version 3.0 (see the [roadmap](roadmap.md)). Until then, no ads will be implemented, except for a "Powered by" footer link.

You are allowed to remove the footer, if you create a link to FreeFlarum elsewhere (not invisible). Send the page where you created the link to info@freeflarum.com, then you can remove the footer by adding this custom CSS:

```
#ff-footer { display:none; }
```

## Can we hire you for a custom job?

FreeFlarum does not do consultancy, as it distracts from our objective to build the best platform. But there are several highly skilled Flarum developers available on the Flarum forum.

## Will you help us if we outgrow your platform?

If you need custom modifications and/or want to move away for any other reason, FreeFlarum happily shares the stack and configuration settings with your engineers for a smooth transition. Our objective is happy Flarum users, either on our platform or elsewhere.

## What happens when Flarum has a new release?

Small (security) releases will be applied right away. You shouldn't have to worry about that!

You won't have to worry about bigger releases either, as FreeFlarum takes care of all data migration. 

There is one caveat though: until the Flarum API is stable (planned for v0.2), extensions will break upon a major Flarum upgrade. So after a release, FreeFlarum waits until the most popular extensions have been updated to work with the new release. If extensions haven't been updated after 3 weeks of a new release, the extension will be deprecated and removed from FreeFlarum. FreeFlarum will notify any users of such extensions so an alternative solution can be found.

## Where are your servers located?

Currently we use Upcloud servers in London, Hetzner servers in Nuremberg and TransIP servers in Amsterdam for offsite backup. If growth continues, we plan to expand to Asia and the US to improve loading times across the globe.

## How can I use tags?

You have to enable the tag system first. Log in, go to Admin -> Administration -> Extensions -> Scroll to "Tags" and enable it. 

## I have another question

Ideas always welcome. If it is not on the roadmap, post a feature request as a new [Github issue](https://github.com/gwillem/freeflarum.com/issues). Please post questions about FreeFlarum in the main [discussion on flarum.org](https://discuss.flarum.org/d/7585-freeflarum-com-now-open-for-beta-access) and questions about Flarum in general in the Support section.
