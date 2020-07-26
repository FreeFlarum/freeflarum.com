# SSO for Flarum (Passport)

!!! quote "Written by:"
    The following guide was written by [@mfitz](https://discuss.flarum.org/d/23687-django-single-sign-on-sso-using-fof-passport).

I have been looking at setting up a Flarum forum alongside a Django (Wagtail) based site. As the main site has user accounts I wanted to be able to re-use these on the Flarum side.  This turned out to be relatively easy to set up using the FoF Passport extension, which is intended to communicate with Laravel Passport.

The first requirement is enabling the [Laravel Passport extension](https://discuss.flarum.org/d/5203-fof-passport-the-laravel-passport-oauth-extension) which is available on FreeFlarum.

### Flarum

Once installed you'll see the settings dialog

![Imgur](https://i.imgur.com/HXMX9zd.png)

The bits in red are your secret key, keep them private. The top 3 fields need to be filled with URLs to your Django app install (covered in the next bit). The OAuth scopes should be "read" and the Label for the button can be anything you like. This is what is shown on the button that's used to login.

### Django

On the Django side you need to add an OAuth provider. Thankfully someone else has done all the work of creating one, which is available [here](https://django-oauth-toolkit.readthedocs.io/en/latest/tutorial/tutorial_01.html#create-an-oauth2-client-application) ...you can follow this installation guide as-is.

In my case I changed the OAuth URL definition to

    path("oauth/", include('oauth2_provider.urls', namespace='oauth2_provider')),

...which is why the first two URLs on the config start with oauth/ not o/. Do what you like here. You also don't want to run in production with `CORS_ORIGIN_ALLOW_ALL = True` so instead set the following with a list of your allowed domains.

    CORS_ORIGIN_WHITELIST = [                                                                                                   
        "https://<my website>",
         "http://<my flarum site>",
    ]                                                                                                                             

This has taken care of the first two URLs, but what about the third? The third is a Passport-specific endpoint for returning data about a user. We need to define our own endpoint for this, here is an example view using django rest framework.

    @api_view(['GET'])
    def passport_user(request):

        bearer = request.META.get('HTTP_AUTHORIZATION')
        if not bearer:
            raise Http404("No authorization in headers")

        token = bearer.split()[1]  # Retreive code

        # If the code is non-existing/expired, this will fail.
        access = AccessToken.objects.get(token=token)

        user = access.user

        return Response({
            'id': user.id,
            'email': user.email,
            'name': user.get_full_name(),
        })

Set up an URL for this view and add that into your Flarum config as the third URL. You should now find that the login works! When clicking Login in Flarum you'll see the login window, plus the new button. Clicking this will open a modal window with your parent sites login forum (or if you're already logged in there, redirecting back). If the user is not set up Flarum will then prompt you to provide a username to use on the forum.

As far as I know there is no way to remove the normal login currently, but you can hide the form by using custom CSS rules, leaving only the SSO button. e.g.


    .LogInModal .Form, .LogInModal .Modal-footer { display: none ;}

    .LogInButtons {
        width: 100%;
    }

    .LogInButtons .Button {
        color: #FEFCFD !important;
        background: #FE4A49;
        border: solid #b13028;
        border-width: 0 0px 3px 0;
        font-size: 1.25em;
        text-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

![Imgur](https://i.imgur.com/IEfBtlx.png)
