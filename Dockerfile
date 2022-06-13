FROM maven AS build-tool-chain

COPY pom.xml /tmp/

COPY src /tmp/src

WORKDIR /tmp/

RUN mvn package

FROM tomcat

COPY --from=build-tool-chain /tmp/target/*.war $CATALINA_HOME/webapps/

CMD [ "catalina.sh", "run" ]

