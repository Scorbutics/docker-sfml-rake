FROM debian:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    wget \
    git \
    cmake \
    libsfml-dev \
    ruby-dev \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install rake-compiler
