#FROM maven:3.6.3-jdk-8 AS build
#WORKDIR /app
#COPY pom.xml .
#RUN mvn -B dependency:resolve dependency:resolve-plugins
#COPY . .
#RUN mvn clean package

# Package stage
FROM tomcat:latest
COPY target/clickCount.war  /usr/local/tomcat/webapps/
RUN ls /usr/local/tomcat/webapps/
#COPY --from=build /app/target/clickCount.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
