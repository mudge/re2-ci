FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
    ruby ruby-dev rubygems build-essential git curl

RUN gem install --no-document fpm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
