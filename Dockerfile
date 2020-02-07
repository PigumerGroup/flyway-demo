FROM ubuntu as jdbcdriver

RUN apt update &&\
    apt install -y curl &&\
    curl -o mysql-connector-java-8.0.19.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.19/mysql-connector-java-8.0.19.jar

FROM flyway/flyway

COPY --from=jdbcdriver /mysql-connector-java-8.0.19.jar /flyway/drivers/
COPY sql /flyway/sql/
