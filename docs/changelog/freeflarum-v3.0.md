# **FreeFlarum Rebase (July 2021)**

Flarum can be hard to setup for people that are not experienced with server or hosting technology. A few years ago in 2017, an idea was born - provide people a fast and simple, one-click Flarum installation! Thus, FreeFlarum was born.

It was running on Python 2.7 to this day, which is pretty old at this point. It is also using old Python packages, and the techniques and code principles have changed a lot nowadays.

So, we have decided to invest our time into updating all (or most of the code) to match new requirements and to make further updates easier to roll out. In little over 5 months (with smaller and bigger breaks here and there), the working implementation is now finished!

Officially, this puts FreeFlarum to version v3.0 (according to our *ancient* [roadmap](https://freeflarum.com/docs/roadmap/)). This update brings a completely new structure for FreeFlarum, Python 3.9 compatibility, PHP 8.0.8 compatibility, and hopefully some performance boost & more security for everything.

Here's an important notice for forums that have donated to FreeFlarum:

- Previously, donors were just marked as donors, and the actual amount that they had donated wasn't saved. However, the new system determines whether or not the forum is donor by the donated amount. Since these were not present, we have assigned every donor a dummy value of 7 €. If you would like to correct that to your actual donor amount (and take advantage of more perks in return for higher amount), please E-mail us at info@freeflarum.com along with the PayPal receipt, if you still have it. We will fix it for you.

## Changes
---

#### Main site:

- The design of https://freeflarum.com was updated once again to ensure a consistent color palette.
- In additon to that, we have also added the ability to toggle between dark and light mode. Default is dark mode, because it's better (or to simply match our previous appearance).
- A few new pages for all the new features.
- Status page does not detect all errors correctly 🙈  (will be fixed)

### Forum registration
- The live forum availability checker now uses an API endpoint to check for forum availability, instead of using JavaScript to check whether or not favicon of the forum exists, to bypass 427/Too many requests, which would falsely mark the forum as taken. This also fixes "ghost forums".
- Soon, it will be possible to choose between several forum functional templates, to quickstart your community. I didn't have time to be fancy with them, but if someone wants to help us, feel free to create some forum boilerplates (e. g. for gaming forum, support forum, chit-chat, etc...). For now, the default is "No template", which is the standard FreeFlarum blank forum as we know it.
- Instead of sending you a password to your E-mail, we now also send you a password reset link. You can now set your new password with fewer clicks, right from your E-mail - and then, be automatically logged in.
- If you try to register a forum with an E-mail address that had banned FreeFlarum (ex. China), you will now receive an error message. We are aware that forums are inaccessible from China, and we will resolve it hopefully very soon.

### The settings page
- ...was now split into multiple sections:
  - [Overview](https://freeflarum.com/settings/overview) - See your points, rank, donation status, perks and more - all at one place.
  - [Forum Settings](https://freeflarum.com/settings/forum_settings) - The standard settings page, as you know it - but with a few extra forms in favor of the new features!
  - [Logs](https://freeflarum.com/settings/logs) - Allows you to view your forum logs (and saves both of us some time, because now you can see the error message, what caused it, and report it to Flarum right away instead of having to wait for us to pull the logs of your forum out).
  - Logout button - logs you out of FreeFlarum (but not your forum).

### [Support page](https://freeflarum.com/support)
Don't you just hate it when we silently delete your forum for being inactive for too long? Well, say no more - now, you can reactivate your forum or reset your password right from the [support page](https://freeflarum.com/support). Everything is completely automatic - you just provide us some extra information, so that we can verify that you are indeed the owner of that forum, and the rest will be done automatically.

### Enhanced E-mail communication
Our E-mails have gotten new look again. They're even simpler now, and the logo should now render properly (at least for GMail users). It doesn't just end with fancy mails - because now you receive them also when your forum is archived, destroyed or reactivated. Triple the chance of FreeFlarum's mail server to be flagged as spam - hooray! Actually, let's hope that won't happen...

### Translations
The FreeFlarum website is now completely translatable! We just haven't finished any translation yet... We have tried [Smartcat](https://smartcat.com/) as the translation service during the testing since Weblate was hard to implement for me (Redis cache, since we don't use that, and GitHub linking specifically), but I will take a look at it again. Meanwhile, I will setup it at Smartcat (at least for now) and we could start accepting translations for the community for the main website (https://freeflarum.com). Note that this is not going to be a paid position!

### API
Under the hood, the frontend now uses the amazing _Alpine.js's_ powers to fetch data from API routes and render them dynamically on pages.

The API routes are located under "_/api_" endpoint of the main site (https://freeflarum.com/api). All data returned is in JSON format.

Our main goal/intention with this was so that third-party tools can now use the API to fetch FreeFlarum's extensions or forums, for example.

This does make scraping easier, but I am personally not against it. It would be possible to scrap all forums from the forum directory page with BeautifulSoup HTML parser for Python very easily anyways. If you can see it, you can get it – so why not make it more accessible for people with good intentions?

Currently, there is no documentation on the API routes, and they're pretty much just for FreeFlarum at the moment and therefore aren't very consistent.

Here's a list of some public ones:

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

This is one of the bigger features in the rebase. Forum directory is a place where forums can be submitted, filtered and viewed. They can be ordered by points, rank, last bumped time (default), or searched by name or keywords. You can scroll the list infinitely, as the JSON API to retrieve the forums is paginated (to prevent server load, so not all forums are returned at once - although this feature was untested and is probably bugged - this will be fixed).

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

#### Other changes & honorable mentions:

- Improved code stability by using more try/catch and check scenarios.
- Half of the forms are now guarded by WTForms for stability and support across different modules
- Users now receive more feedback in a message box at the bottom of the page. These are flashed messages, and they're pretty much everywhere. Along with that, users are now alterted when their forum is archived, destroyed or reactivated.
- New database structure, which makes everything better in overall.
- The documentation was re-written and simplified a lot. It now includes FreeFlarum related things only.

## Extensions:
### Added:
- askvortsov/flarum-checklist
- clarkwinkelmann/flarum-ext-group-list
- flarum-lang/brazilian
- flarum-lang/chinese-simplified
- flarum-lang/french
- flarum-lang/german
- flarum-lang/russian
- flarum-lang/turkish
- fof/byobu - still in beta, be careful!
- fof/mason
- the-turk/flarum-mathren

### Removed:
- cryental/flarum-l10n-ext-korean
- csineneo/lang-traditional-chinese
- cwkevo/flarum-lang-slovak - soon™
- darkfoxdeveloper/lang-spanish
- fof/transliterator
- itnt/flarum-uitab
- kakifrucht/flarum-de - replaced by flarum-lang/german
- kakifrucht/flarum-de-extended - replaced by flarum-lang/german
- littlegolden/flarum-lang-japanese - not compatible, but [author plans to update it](https://discuss.flarum.org/d/22631/57)
- marketplace/flarum-l10n-core-russian - replaced by flarum-lang/russian
- marketplace/flarum-l10n-ext-russian - replaced by flarum-lang/russian
- luatdolphin/lang-vietnamese
- menomenta/flarum-ext-norwegian
- neercsys/flarum-ext-bosanski
- neercsys/flarum-lang-bosanski
- persianfla/flarum-ext-persian
- qiaeru/lang-french - replaced by flarum-lang/french
- rikusen0335/lang-japanese-extended
- starsriver/mathplus - replaced by the-turk/flarum-mathren
- tiu-ram0n/brazilian-portuguese - replaced by flarum-lang/brazilian
- tolgaaaltas/flarum-ext-turkish - replaced by flarum-lang/turkish
- tolgaaaltas/flarum-lang-turkish - replaced by flarum-lang/turkish
- xelson/flarum-ext-chat

I know, the amount of removed extensions might be bigger. But on the bright side, half of them got replacements, which is great, thanks to the efforts of all developers!

### What's next?

In the following weeks, we will observe how the update behaves and fix any issues & bugs that we might stumble upon. We hope that this won't be necessary though.

Remember that your feedback matters! If you're unhappy with some change, we will listen to you. Tell us what would you change and why, and we will address your concerns in the next update.

### Credits:

That was definitely a ride. Thank you everyone for using FreeFlarum - it wouldn't be possible without you! You give us motivation to keep us going forward to make FreeFlarum a better service. Thank you very much!

**Thanks to:**

- @Sanguine, for creating FreeFlarum, for his valuable feedback and for providing us a server that we can test things on without breaking the main one. FreeFlarum wouldn't be possible without him.
- @meetdilip, for valuable feedback, support and optimism in order to keep us going forward.
- @CW_Kevo, for starting the rebase project and finishing it.

Also big thanks for the Flarum team for creating such an amazing software, that connects people all around the world! Flarum is simple, yet magnificent. We are all very proud of the stable release and where we've come in all those years!

Great job everyone!
