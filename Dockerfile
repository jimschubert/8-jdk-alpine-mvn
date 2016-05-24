FROM java:8-jdk-alpine

MAINTAINER Jim Schubert <james.schubert@gmail.com>

ENV MAVEN_HOME=/usr/share/maven

RUN wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz -O - | tar zxf - \
   && mv ./apache-maven-3.3.9 /usr/share/maven \
   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

