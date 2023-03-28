FROM golang:1.20.2-alpine3.17
# docker pull golang:1.20.2-alpine3.17
LABEL MAINTAINER "mark.hsieh <qqzcmark@gmail.com>"

RUN apk update 
RUN apk add --no-cache bash git ca-certificates 
RUN apk add --no-cache openssh
