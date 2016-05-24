FROM java:8-jdk-alpine

MAINTAINER Jim Schubert <james.schubert@gmail.com>

ENV MAVEN_HOME=/usr/share/maven

RUN cd /tmp \
   && wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz \
   && wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz.sha1 \
   && echo -e "$(cat apache-maven-3.3.9-bin.tar.gz.sha1)  apache-maven-3.3.9-bin.tar.gz" | sha1sum -c - \
   && tar zxf apache-maven-3.3.9-bin.tar.gz \
   && rm -rf apache-maven-3.3.9-bin.tar.gz \
   && rm -rf *.sha1 \
   && mv ./apache-maven-3.3.9 /usr/share/maven \
   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

