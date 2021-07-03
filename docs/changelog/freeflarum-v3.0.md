# **FreeFlarum Rebase (July 2021)**

Flarum can be hard to setup for people that are not experienced with server or hosting technology. A few years ago in 2017, an idea was born - provide people a fast and simple, one-click Flarum installation! Thus, FreeFlarum was born.

Now, it's running on Python 2.7 which is pretty old at this point. It is also using old Python packages, and the techniques and code principles have changed a lot nowadays.

So, we have decided to invest our time into updating all (or most of the code) to match new requirements and to make further updates easier to roll out. In little over 5 months (with smaller and bigger breaks here and there), the working implementation is now finished!

# Changes:

## Important changes:
- Previously, donors were just marked as donors, and the actual amount that they had donated wasn't saved. However, the new system determines whether or not the forum is donor by the donated amount. Since these were not present, we have assigned every donor a dummy value of 7 €. If you would like to correct that to your actual donor amount, please E-mail us at info@freeflarum.com along with the PayPal receipt, if you still have it. We will fix it for you.

## Website:

The frontend (website)'s design was updated once again. We have built upon already existing styles (and added new ones). The color palette became more consistent along with other page elements, and the website is also more responsive on smaller screens.

The biggest difference is that users can now toggle between light and dark mode. This can be done by clicking on the button next to logo in the top left corner of the page (with sun/moon emoji). The preference is saved in a cookie and remembered during next page load. Default mode for new users is night mode, to match our old look. Dark mode also looks better overall, in my opinion.

## Settings

The settings page was split into multiple sub-pages: _Overview_, _Forum Settings_, _Logs_ and _Logout button_.

### Overview

Contains information about the forum, such as its rank, points, users, etc...

On the bottom of the page, there is a new section made just for donations. Here, users are able to choose a recommended amount, view the perks that they recieve upon donating that amount and can proceed to PayPal, or donate with cryptocurrency (for people that can't access PayPal from their country).

We strongly recommend you to check our [Donation FAQ](/docs/faq#donation-faq) before you make a donation. Donations are always very much appreciated, as servers aren't free to rent. Thanks!

### Forum Settings

The standard settings page, extended with some more settings, such as forum directory form to change forum description, icon, keywords, bump forum button, etc...

This is all new, and will be explained below in a moment.

### Logs

This page contains all logs of a forum from the "_app/storage/logs_" directory. These logs can be downloaded to your device and viewed. It is not be possible to exploit this to send non-log files to the user – the backend makes sure that just the actual log files can be sent to the client.

A very brief tutorial on how to read the logs can be found at the [actual logs page](/settings/logs).

### Logout button

Pretty self-explanatory - logs the user out.

## Translations

It is now possible for the user to select a language in the frontend and browse FreeFlarum's webpages in their language. The language gets stored in a cookie, so the preference is saved even after the browser is closed.

The translations use Flask-Babel to match the translation phrases to a user. Along with that, there are bash scripts for creating new locales, updating existing ones and compiling the translations.

To make translations easier to maintain, we've chosen [https://smartcat.com/](https://smartcat.com/) as our translation repository service. Weblate required additional setups to be made (such as Redis cache server and linking to GitHub). This was hard for us to get running locally, so we've decided to go with a simpler click-and-go solution.

We are currently looking for translators. Contact us if you're interested. Note that this position will NOT be paid!

# REST API

Under the hood, the frontend now uses the amazing _Alpine.js's_ powers to fetch data from API routes and render them dynamically on pages.

The API routes are located under "_/api_" endpoint of the main site. All data returned is in JSON format.

Our main goal/intention with this was so that third-party tools can now use the API to fetch FreeFlarum's extensions or forums, for example.

This does make scraping easier, but I am personally not against it. It would be possible to scrap all forums from the forum directory page with BeautifulSoup HTML parser for Python very easily anyways. If you can see it, you can get it – so why not make it more accessible for people with good intentions?

### API Routes:

Currently, there is no documentation on those, and they're pretty much just for FreeFlarum at the moment and therefore aren't very consistent.

Here's some of the public ones:

- `/api/check_forum?forum=<forum_name>` - checks if the forum is accessible (by FreeFlarum) or if it exists. This is used by the live forum name availability checker in the registration form.
- `/api/forum/<forum_name>` - returns a JSON data of the specified forum. This includes the forum's name, post count, user count, rank, points, etc... Only forums marked as public can be viewed. If this route is accessed by the current forum's owner, and they're logged in, then additional data is returned, such as the forum's hostname, whether or not the forum can be bumped, etc...
- `/api/forum_list` - a route that returns simple JSON data for forums, based on specific filters:
  - `?page=<integer>` - page number (you can fetch at max. 20 forums per page)
  - `?filter=<string>` - filter forum names containing specific string.
  - `?keywords=<comma separated strings>` - only returns forums that have at least one of the keywords
  - `?order_by=<rank|points|last_bumped_at>` - orders the forum list.
  - `?category=<category>` - only return forums with that category. See `/api/valid_forum_categories` for a list of valid categories.
- `/api/valid_forum_categories` - returns a JSON object/dictionary of valid forum categories. Key is the category ID and value of that key is the category's display name.
- `/api/extension_list` - A JSON object/dictionary of all FreeFlarum's extensions. The keys are extension categories and values are lists of some extensions' data.

There are more API routes, but we deem these to not be important or useful in places outside of FreeFlarum.

# Forum directory

This is one of the bigger features in the rebase. Forum directory is a place where forums can be submitted, filtered and viewed. They can be ordered by points, rank, last bumped time (default), or searched by name or keywords. You can scroll the list infinitely, as the JSON API to retrieve the forums is paginated (to prevent server load, so not all forums are returned at once).

## Forum reputation system

Forums now work on some kind of "reputation" system that allows them to place higher in the forum directory, which allows more people to see the forum and this in the result promotes the forum.

### Rank

There is a backend command to calculate the forum's rank, which is assigned to 1-hour cronjob. First, all forums are sorted by the points from highest points amount to lowest. Then, the forum's position in this enumerator is the forum's rank, which is then saved into the database. Simple and fast, although this means that you can't recalculate rank just for one forum, you would have to fetch them all, which is terribly inefficient.

For you, my unexperienced user, this means that forum ranks are recalculated every 1 hour).

### Points

Forum's points are calculated every hour along with ranks (or after a successful forum bump - although bumping does not recalculate rank due to how the calculation works - see above). Points are based on forum's post count, user count, extra points and total bumps. Each number of these multiplier the points:

- User count × 1.5
- Total bumps × 2
- Post count × 1.25

Extra points are then added to calculated points and the result is rounded. That number is the new amount of forum's points.

Extra points are just like points, except they are not re-calculated (so they're pretty much something like "static" points, and they can't be lost due to a drop in forum's user count, etc...). They are added to the points during points calculation. Extra points can be earned by donating, for example every euro donated adds × 5 extra points. So, 20 € would add 100 extra points.

### User & post count

Is now calculated in real-time (along with last admin online date, last post date, etc.)

## Forum reactivation

Don't you just hate it when we've deleted your forum with no warning and you had to request the reactivation by E-mailing us? And then we'd have to manually reactivate your forum, while you were waiting for us?

Well, we have good news - we no longer silently remove inactive forums. You'll now get a shiny, E-mail notification and some info on how to deal with it. And you can perform a reactivation by yourself (see below).

Please note that we must remove inactive forums, or else our disk space would quickly fill up and we'd have no more space for new forums (or even old ones). It is a necessary precaution. If you don't feel like that you need a forum anymore, or you just came to test Flarum, please do not reactivate your forum for no reason. Thanks!

Every 6 months, a script is ran to check if there are any archived forums older than 6 months. If yes, they are destroyed forever. So, after your forum was archived, you have 6 months before it is gone forever. This is again just a protective measure to not cause our disk pain.

## Support page

In addition to the abovementioned, we've created a new [support](/support) page, where you can perform the reactivation all by yourselves, and even reset your password. You just have to answer 2 things so that we can verify that you're indeed the owner of that forum. These requests are processed immediately and are completely automatic - so your forum can be back online in just a matter of seconds!

We will still allow people to reactivate forums by E-mailing us, however using the support page is the recommended way.

#### Other changes & honorable mentions:

- Improved code stability by using more try/catch and check scenarios.
- Half of the forms are now guarded by WTForms for stability and support across different modules
- Users now receive more feedback in a message box at the bottom of the page. These are flashed messages, and they're pretty much everywhere. Along with that, users are now alterted when their forum is archived, destroyed or reactivated.
- New database structure, which makes everything better in overall.
- The documentation was re-written and simplified a lot. It now includes FreeFlarum related things only.

### What's next?

In the following weeks, we will observe how the update goes and fix any issues & bugs that we stumble upon. We hope that this won't be necessary though.

Remember that your feedback matters! If you're unhappy with some change, we will listen to you. Tell us what would you change and why, and we will address your concerns in the next update.

### Credits:

That was definitely a ride. Thank you everyone for using FreeFlarum - it wouldn't be possible without you! You give us motivation to keep us going forward to make FreeFlarum a better service. Thank you very much!

**Thanks to:**

- Willem, for creating FreeFlarum, for his valuable feedback and for providing us a server that we can test things on without breaking the main one. FreeFlarum wouldn't be possible without him.
- Meetdilip, for valuable feedback, support and optimism in order to keep us going forward.
- CWKevo, for starting the rebase project and finishing it.

Also big thanks for the Flarum team for creating such an amazing software, that connects people all around the world! Flarum is simple, yet magnificent. We are all very proud of the stable release and where we've come in all those years!

Great job everyone!

