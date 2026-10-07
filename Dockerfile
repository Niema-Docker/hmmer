# Minimal Docker image for HMMER using Alpine base
FROM alpine:latest

# install HMMER
RUN apk update && \
    apk add --no-cache bash gcc make musl-dev && \
    wget -qO- "http://eddylab.org/software/hmmer/hmmer-3.4.tar.gz" | tar -zx && \
    cd hmmer-* && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf hmmer-*
