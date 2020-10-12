FROM maven:3-jdk-8 as BUILD
RUN wget -O /tmp/postgresql.jar "https://jdbc.postgresql.org/download/postgresql-42.2.9.jar"

COPY src /tmp/app
COPY pom.xml /tmp
RUN mvn -f /tmp/pom.xml clean package

FROM jboss/wildfly:10.0.0.Final

ENV DEPLOYMENT_DIR /opt/jboss/wildfly/standalone/deployments

COPY --from=BUILD /tmp/postgresql.jar ${DEPLOYMENT_DIR}
COPY --from=BUILD /tmp/target/multi_tenancy.war ${DEPLOYMENT_DIR}

