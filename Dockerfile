FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/aws-beanstalk.jar app.jar
COPY prometheus/jmx_prometheus_javaagent-1.2.0.jar .
COPY prometheus/config.yml .
CMD ["java", "-javaagent:jmx_prometheus_javaagent-1.2.0.jar=8081:config.yml", "-jar", "app.jar"]