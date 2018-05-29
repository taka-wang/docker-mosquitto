FROM alpine:edge
MAINTAINER Taka Wang

ENV MOSQUITTO_VERSION 1.4.15-r3

EXPOSE 8883

LABEL Description="Mosquitto MQTT Broker"

RUN apk --no-cache add mosquitto=$MOSQUITTO_VERSION && \
    mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log && \
    cp /etc/mosquitto/mosquitto.conf /mosquitto/config && \
    chown -R mosquitto:mosquitto /mosquitto

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
