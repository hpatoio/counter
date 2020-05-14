ARG ELIXIR_VERSION=1.10

FROM elixir:${ELIXIR_VERSION}-alpine

RUN apk update \
 && apk add nodejs \
 && apk add npm \
 && apk add git \
 && apk add openssh-client \
 && apk add openssh \
 && apk add inotify-tools \
 && mix local.hex --force \
 && mix archive.install --force hex phx_new \
 && rm -rf /var/cache/apk/*

RUN set -xue \
    ; apk --no-cache add shadow \
;

EXPOSE 4000

WORKDIR /usr/src/phoenix/