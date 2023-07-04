FROM ubuntu:20.04

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

RUN apt-get install -y \
    ruby ruby-dev rubygems build-essential git curl cmake software-properties-common pkg-config

RUN add-apt-repository -y ppa:savoury1/build-tools

RUN apt-get install -y libabsl-dev

RUN gem install --no-document fpm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
