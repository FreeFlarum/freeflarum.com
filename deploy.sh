#!/bin/bash
cd "$(dirname "$0")"
[ ! -d "env" ] && python -m venv env


source env/bin/activate
pip install -r requirements.txt


for f in ./docs/*.yml
do
  python -m mkdocs build -f "$f"
done
