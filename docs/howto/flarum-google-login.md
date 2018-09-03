
# Login with Google

1. Go to the Google API Console: https://console.developers.google.com/project/_/apiui/apis/library
2. Create a new project in the dropdown at the top and give it a name (eg My Flarum)
3. Once on the project dashboard, search for **Google+** and enable the API
5. In the sidebar under "API Manager", select **Credentials**, then select the **OAuth consent screen** tab.
6. Choose an Email Address, specify a Product Name, and press Save.
7. In the Credentials tab, select the New credentials drop-down list, and choose **OAuth client ID**.
8. Select **Web Application**
9. The **Authorized Javascript origin** will be your domain: **http://flarum.example.com**
10. The **Authorised redirect URIs** will be **http://flarum.example.com/auth/google** (notice it ends in */auth/google*
11. From the resulting OAuth client dialog box, you will be able to access the **Client ID** and the **Client Secret** will you will need to paste into the settings box on the Flarum extension

**Notice**
The *Hosted Domain* paramater is for only allowing emails in your Google Apps account access, otherwise you should leave it blank