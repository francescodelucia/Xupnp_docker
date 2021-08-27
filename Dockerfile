# syntax=docker/dockerfile:1
FROM archlinux

RUN mkdir /xupnpd
COPY ./xupnpd/run/ /xupnpd/
COPY ./startscript.sh /xupnpd/
RUN mkdir /config

ENTRYPOINT ["/xupnpd/startscript.sh"]