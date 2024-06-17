FROM alpine:latest

RUN apk add git

# # python3
# RUN git clone https://github.com/mocowcow/test-actions.git
# RUN cd test-actions/assets

# # unzip
# RUN tar -xzvf Python-3.10.8.tgz
# RUN cd Python-3.10.8

RUN git clone https://github.com/mocowcow/test-actions.git && \
    cd test-actions/assets && \
    tar -xzvf Python-3.10.8.tgz && \
    cd Python-3.10.8 && \
    ./configure --enable-optimizations && \
    make -j $(nproc) && \
    sudo make altinstall
