FROM adaptris/interlok:latest-alpine

EXPOSE 8080
EXPOSE 5555

RUN rm -rf /opt/interlok/lib/adp-*.jar

ADD lib /opt/interlok/lib
ADD webapps /opt/interlok/webapps
ADD config /opt/interlok/config
ADD mappings /opt/interlok/mappings
