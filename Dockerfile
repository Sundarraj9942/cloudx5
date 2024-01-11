FROM openjdk:21
EXPOSE 8080
ADD target/cloudx5.jar cloudx5.jar
ENTRYPOINT ["java","-jar","/cloudx5.jar"]
