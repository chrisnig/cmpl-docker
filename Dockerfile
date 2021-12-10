FROM ubuntu:20.04

ADD Cmpl-2-0-linux64.tar.gz /usr/share

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -q -y install libglib2.0-0 && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENTRYPOINT ["/usr/share/Cmpl-2-0-linux64/cmpl"]
