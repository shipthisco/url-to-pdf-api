# syntax = docker/dockerfile:experimental

FROM zenika/alpine-chrome

COPY . /app
WORKDIR /app

RUN apt update -y \
  && apt install -y fontconfig fonts-dejavu ttf-mscorefonts-installer curl gnupg git \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt install -y nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN npm install
CMD npm start