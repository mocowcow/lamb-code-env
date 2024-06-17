FROM alpine:latest

RUN apk update && apk add --no-cache \
    bash \
    curl \
    tar \
    gzip

# go1.21
RUN curl -LO https://go.dev/dl/go1.21.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && \
    rm go1.21.linux-amd64.tar.gz

# python 3.10
RUN apk add --no-cache \
    python3=3.10.11-r0 \
    py3-pip

