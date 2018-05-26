# starts this image exteding openjdk image (which extends a very fast linux distro called Alpine)
FROM openjdk:8u121-jdk-alpine

# copy current jar file to a folder inside the image
COPY build/libs/dockerfile-for-springboot.jar /home

# expose inner port 8080 to outside world!
EXPOSE 8080

# executes spring boot (only in server startup, not during the image build)
CMD java -jar /home/dockerfile-for-springboot.jar

