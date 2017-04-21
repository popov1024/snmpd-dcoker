FROM alpine:latest

RUN apk update && \
    apk add net-snmp

EXPOSE 161/udp
EXPOSE 162/udp

CMD ["/usr/sbin/snmpd", "-f"]
