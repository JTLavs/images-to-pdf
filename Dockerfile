FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt install wkhtmltopdf -y && \ 
apt install nodejs -y && \
apt install npm -y

WORKDIR /src

RUN npm install wkhtmltopdf

COPY ./index.js .
COPY ./images ./images