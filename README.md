# FreeFlarum.com

Contains the front-end for FreeFlarum.com:

- [x] docs
- [ ] control panel

Works in conjuction with freeflarum-backend.

PRs welcome! Please submit bugs/feature requests as issues in this repo.

# How to run locally

Instructions for Ubuntu:
```
sudo apt install python3-pip 
sudo pip3 install pipenv
pipenv install
pipenv run mkdocs serve
```
And see your live edits at http://localhost:8000/

# How to deploy

```
./deploy.sh
```