FROM openjdk:8-alpine

#RUN mkdir -p /app/plugins
COPY plugins/kotlin-source-0.1.jar /app/plugins/

ADD https://dl.bintray.com/r3/corda/net/corda/corda/4.1/corda-4.1.jar /app/corda.jar
ADD https://dl.bintray.com/r3/corda/net/corda/corda-webserver/4.1/corda-webserver-4.1.jar /app/corda-webserver.jar
ADD https://dl.bintray.com/r3/corda/net/corda/corda-finance/3.4-corda/corda-finance-3.4-corda.jar /app/plugins/corda-finance.jar

COPY entrypoint.sh /app/entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
