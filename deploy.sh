#!/bin/bash

pipenv run mkdocs build
rsync -va --delete --exclude=.git ./ freeflarum.com:/data/docs/