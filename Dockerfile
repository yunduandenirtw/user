FROM java:8

VOLUME /tmp

ADD smcusers-0.0.1-SNAPSHOT.jar smcusers.jar

RUN sh -c 'touch /smcusers.jar'

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar smcusers.jar" ]