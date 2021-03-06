FROM elixir:1.5-alpine

ENV REPLACE_OS_VARS=true

# Upgrade all packages
RUN \
    apk --no-cache --update upgrade && \
    apk --no-cache --update add \
        git make g++ wget curl inotify-tools bash zsh nano \
        nodejs nodejs-npm && \
        npm install npm -g --no-progress && \
        update-ca-certificates --fresh && \
        rm -rf /var/cache/apk/*

# Install hex, rebar and phoenix
RUN mix local.rebar --force && \
    mix local.hex --force && \
    mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.0.ez --force

# Add local node module binaries to PATH
ENV PATH=./node_modules/.bin:$PATH

# Creates app folder
RUN mkdir /app

WORKDIR /app
