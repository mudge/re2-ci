FROM ubuntu:22.04

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

RUN apt-get install -y \
    ruby ruby-dev rubygems build-essential git curl cmake libabsl-dev pkg-config

RUN gem install --no-document fpm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
