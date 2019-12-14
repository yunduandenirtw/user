FROM java:8

ENV PROJECT_ARTIFACTID="smcusers" PROJECT_VERSION="0.0.1-SNAPSHOT"

COPY target/$PROJECT_ARTIFACTID-$PROJECT_VERSION.jar /smcusers.jar

EXPOSE 9090

ENTRYPOINT ["java", "-jar", "smcusers.jar"]
