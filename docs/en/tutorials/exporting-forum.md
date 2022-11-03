# Exporting your forum

FreeFlarum does not want to lock you into its service, so at any time you are free to take your data and move your forum elsewhere.
Here are the steps you need:

1. [Log in to FreeFlarum](https://freeflarum.com/settings/account_settings) and download your database and avatars.
2. Install Flarum (same version!) elsewhere, and follow the [regular documentation](https://docs.flarum.org/install/) to do that. Test if your new installation is working.
3. Import your database: `zcat my_freeflarum_database_export.sql.gz | mysql -u USER -h HOST -p` where USER and HOST are from your new database account.
4. Restore your assets: unzip your `public` assets export
5. To be sure, clear the cache: `php flarum cache:clear` and migrate Flarum's database: `php flarum migrate`
6. Finished :)

FreeFlarum is sorry to see you go, but good luck with your forum!

Please, [let us know](https://freeflarum.com/support) if you have any suggestions for us to improve our service. Thank you!
