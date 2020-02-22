FROM alpine

RUN apk update && \
    apk add alpine-sdk git make python python-dev swig && \
    wget https://www.nlnetlabs.nl/downloads/ldns/ldns-1.7.1.tar.gz && \
    tar xf ldns-1.7.1.tar.gz && \
    cd ldns-1.7.1 && \
    ./configure --with-drill --with-examples --with-pyldns  && \
    make && \
    make install && \
    apk del alpine-sdk
    
