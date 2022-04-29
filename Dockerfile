# syntax = docker/dockerfile:experimental

FROM zenika/alpine-chrome:with-node

COPY . /app
WORKDIR /app

RUN npm install
CMD npm start