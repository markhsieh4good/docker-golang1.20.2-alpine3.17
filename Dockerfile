FROM golang:1.14-alpine3.13
# docker pull golang:1.14-alpine3.13
LABEL MAINTAINER "mark.hsieh <qqzcmark@gmail.com>"

RUN apk update 
RUN apk add --no-cache bash git ca-certificates 
RUN apk add --no-cache openssh
