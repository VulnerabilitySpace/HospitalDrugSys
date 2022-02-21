FROM openjdk:8u191-jdk-alpine3.9
VOLUME /tmp
ADD app.jar app.jar
COPY iast/ /tmp/
RUN pwd && ls
ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005","-javaagent:/tmp/dongtai-agent.jar", "-Ddongtai.debug=true", "-Ddongtai.app.name=HospitalDrugSys","-jar","/app.jar","--spring.profiles.active=pro"]
