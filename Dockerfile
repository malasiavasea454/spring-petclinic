FROM openjdk
COPY ./spring-petclinic /home/src
WORKDIR /home/src
RUN ./mvnw package
ENTRYPOINT ["java", "-jar", "/home/src/target/*.jar"]
