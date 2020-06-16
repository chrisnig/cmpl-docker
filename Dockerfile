FROM ubuntu:20.04

ADD Cmpl-1-12-0-Linux64.tar.gz /usr/share

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -q -y install libglib2.0-0 && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["/usr/share/Cmpl/cmpl"]
