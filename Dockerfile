FROM ubuntu:14.04

COPY install.sh /install.sh

RUN apt-get update
RUN apt-get install libjpeg-dev curl git-core build-essential \
    python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev \
    python2.7-dev python3.4-dev \
    libreadline-dev libsqlite3-dev libpq-dev \
    libxmlsec1-dev libxmlsec1-openssl pkg-config -y

RUN /bin/bash /install.sh && rm /install.sh

ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
