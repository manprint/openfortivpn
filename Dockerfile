FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y openfortivpn ppp iputils* net-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
