FROM golang:1.21.5-alpine as build-stage

RUN apk add python3