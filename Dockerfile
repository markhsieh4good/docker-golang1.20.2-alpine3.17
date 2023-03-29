FROM golang:1.20.2-alpine3.17
# docker pull golang:1.20.2-alpine3.17
LABEL MAINTAINER "mark.hsieh <qqzcmark@gmail.com>"

## install package
RUN apk update 
RUN apk add --no-cache bash git ca-certificates 
RUN apk add --no-cache openssh

## setting network
COPY ./utility_loopback.sh .
RUN chmod +x ./utility_loopback.sh
RUN ./utility_loopback.sh

COPY ./utility_namespace_dns.sh
RUN chmod +x ./utility_namespace_dns.sh
RUN ./utility_namespace_dns.sh
