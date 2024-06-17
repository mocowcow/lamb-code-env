FROM alpine:latest

RUN apk update && apk add --no-cache \
    bash \
    curl \
    tar \
    gzip

# python 3.10
RUN apk add --no-cache \
    python3=3.10.11-r0 \
    py3-pip

