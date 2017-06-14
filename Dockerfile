FROM java:7 

ENV JAVA_HOME="/usr/bin/java" APP_PORT="8080"


# copy local src to DOCKER CONTAINTER PATH 
COPY src/ /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin

RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
