FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
    software-properties-common build-essential curl

RUN apt-add-repository ppa:brightbox/ruby-ng && \
    apt-get update

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev

RUN REALLY_GEM_UPDATE_SYSTEM='Yes' gem update --system '2.7.11'

RUN gem install bundler -v '1.17.3'

ENV LANG=C.UTF-8

CMD ["/bin/bash"]
