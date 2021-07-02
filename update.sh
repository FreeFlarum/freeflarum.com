#!/bin/bash

cd "$(dirname "$0")"

pipenv run mkdocs build
rsync -va --delete --exclude=.git ./ /data/docs/
