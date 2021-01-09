[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/gwillem/freeflarum.com)
[![GitHub watchers](https://img.shields.io/github/watchers/gwillem/freeflarum.com?style=social)](https://github.com/gwillem/freeflarum.com/watchers)
[![GitHub Repo stars](https://img.shields.io/github/stars/gwillem/freeflarum.com?style=social)](https://github.com/gwillem/freeflarum.com/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/gwillem/freeflarum.com?style=social)](https://github.com/gwillem/freeflarum.com/network/members)

<p align="center">
  <img src="./images/freeflarum-logo.svg">
</p>

 __FreeFlarum__ is a community provided [Flarum](https://www.flarum.org) hosting allowing you to quickly launch your forum under 1 minute! Flarum can be hard to set up. Not anymore! Create your own Flarum forum instantly and start building your community.
 
> ---
> ### __Navigation:__
> 1. __[Overview](https://github.com/gwillem/freeflarum.com)__
> 2. __[Official Website](https://www.freeflarum.com)__
> 3. __[Documentation](https://www.freeflarum.com/docs)__
> ---

# Features:
• __Quick forum creation:__ Create your forum in 1 minute - just pick a name, administrator E-Mail and you are good to go!

• __No technical skills required:__ FreeFlarum is easy to use with no hard setup required! You are just a few clicks away from your forum!

• __Fast, Secure, Safe, Simple:__ You won't find better performance in anywhere! Powered by fastest and most secure machines on internet your forum will run like a feather. In an addition, FreeFlarum also protects your internet privacy. Your community and your data is yours and you can always export it. We don't like [dark marketing patterns](https://www.darkpatterns.org/) so we don't have them.

• __Tons of backups are made everyday:__ Daily backups are made to an offsite location. No headaches about failing hardware, we got you covered! 

• __Fast and kind support:__ You can contact us at anytime! We are always there for you!


#### ...but most importantly, FreeFlarum is 100% free! No overpriced plans or credit card required! You can have your Flarum running 24/7 with no finance needed!

---

### ☼ Don't believe us? __[Check it out](https://www.freeflarum.com)__! ☼

<details><summary>Repository Information:</summary>
<p>

# FreeFlarum Frontend

This repository contains the front-end for FreeFlarum.com:

- [x] documentation, built with Mkdocs and Material for Mkdocs
- [ ] control panel

Works in conjuction with freeflarum-backend.

## Submitting feature/extension requests:

Please, [submit feature and extension request as a new issue][extension-request]
in this repository.

[extension-request]: https://github.com/gwillem/freeflarum.com/issues/new?assignees=&labels=%F0%9F%99%8B+Extension%2Ffeature+request&template=extension-request.md&title=%5BInsert+name+of+the+extension%2Ffeature+here%5D

## Local development

### Debian-based Linux distributions

```bash
# Install pip first (and Python 3.x, if not yet installed!)
sudo apt install python3-pip 

# Next, install pipenv
sudo pip3 install pipenv

# Install dependencies within pipenv
pipenv install

# Run dev server.
pipenv run mkdocs serve
```
And see your live edits at http://localhost:8000/.

## With Gitpod

> **Side note**: The `gitpod/workspace-full` image has latest version of Python installed by default, so
pipenv will prompt you to install v3.5 to continue, as per the `Pipfile`. To prevent this from happening,
we install that version during workspace build.

1. Open the GitHub repo in Gitpod by appending with `gitpod.io/#`.
    - When prompted, sign in using your GitHub account. (For first-time users, accept the authorization.)
2. Wait for the workspace to be built and dependencies for local documentation development is done. Happy editing.

## Deployment

```bash
# Use the deployment script for simplified process.
# Will not work on Windows (unless using Git Bash or on WSL)
# Requires rsync installed
./deploy.sh
```

### Note:
FreeFlarum.com is a community provided host for Flarum. FreeFlarum is NOT affiliated with Flarum.
Questions related to forum software should be adressed to the [Flarum's Discussion Forums](https://discuss.flarum.org/).
</p>
</details>
