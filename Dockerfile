FROM node:latest

USER root

RUN apt-get update 

RUN mkdir /llm_server

WORKDIR /llm_server/

COPY package.json ./
COPY .env ./
RUN npm install --silent
RUN npm install -g nodemon
# RUN npm install dotenv --save
