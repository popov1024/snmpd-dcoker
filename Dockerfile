FROM alpine:latest

RUN apk --no-cache add net-snmp

EXPOSE 161/udp
EXPOSE 162/udp

CMD ["/usr/sbin/snmpd", "-f"]
