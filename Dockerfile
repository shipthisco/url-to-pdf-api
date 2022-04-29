# syntax = docker/dockerfile:experimental

FROM zenika/alpine-chrome

COPY . /app
WORKDIR /app

RUN npm install
CMD npm start