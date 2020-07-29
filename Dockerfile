FROM amazoncorretto:11
VOLUME /tmp
EXPOSE 80
ADD https://sa-api728.s3.amazonaws.com/dev/rest-service-0.0.1-SNAPSHOT.jar rest-service-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /rest-service-0.0.1-SNAPSHOT.jar" ]
