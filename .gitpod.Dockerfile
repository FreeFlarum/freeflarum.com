FROM gitpod/workspace-full

## Install CPython 3.5.10 first
RUN pyenv install 3.5.10 && pyenv global 3.5.0

## Then attempt to upgrade pipenv.
RUN pip3 install pipenv --upgrade