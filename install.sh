#!/bin/bash

cd "$(dirname "$0")"

pipenv install
pipenv run mkdocs build
