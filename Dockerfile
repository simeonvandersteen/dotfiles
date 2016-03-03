FROM debian:jessie
MAINTAINER Simeon van der Steen <simeon@simeonvandersteen.nl>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install vim \
    git zsh curl \
    && apt-get clean

COPY . /root/dotfiles/
