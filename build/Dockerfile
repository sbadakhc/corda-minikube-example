FROM openjdk:8u151-jre-alpine

#RUN mkdir -p /app/plugins
COPY plugins/kotlin-source-0.1.jar /app/plugins/

ADD https://dl.bintray.com/r3/corda/net/corda/corda/2.0.0/corda-2.0.0.jar /app/corda.jar
ADD https://dl.bintray.com/r3/corda/net/corda/corda-webserver/2.0.0/corda-webserver-2.0.0.jar /app/corda-webserver.jar
ADD https://dl.bintray.com/r3/corda/net/corda/corda-finance/2.0.0/corda-finance-2.0.0.jar /app/plugins/corda-finance.jar

COPY entrypoint.sh /app/entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
