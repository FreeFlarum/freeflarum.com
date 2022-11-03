#!/bin/bash
cd "$(dirname "$0")"

[ ! -d "env" ] && python -m venv env


source env/bin/activate
pip install -r requirements.txt

python -m mkdocs gh-deploy --force -f docs/en.yml
python -m mkdocs gh-deploy --force -f docs/cn.yml
