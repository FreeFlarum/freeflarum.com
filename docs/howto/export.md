# Exporting your forum

FreeFlarum does not want to lock you into its service, so at any time you are free to take your data and move your forum elsewhere. Here are the steps you need.

![](https://buq.eu/screenshots/V8oNk96S9EJhzGhmyzTyOSkr.png)

1. [Log in to FreeFlarum](/settings) and download your database and avatars.
2. Install Flarum (same version!) elsewhere, and follow the regular documentation to do that. Test if your new installation is working. 
3. Import your database: `zcat flarum_myforum.sql.gz | mysql -u USER -h HOST -p` where USER and HOST are from your new database account.
4. Restore your avatars: unzip the avatars file to `/public/assets/avatars`
5. To be sure, clear the cache: `php flarum cache:clear`
6. Finished :-)

FreeFlarum is sorry to see you go, but good luck with your forum!

Please [do let us know](/support) if you have any suggestions for us to improve our service.

