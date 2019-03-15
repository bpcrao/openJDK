FROM debian:stretch-slim

RUN apt-get update

RUN apt-get install -y python-setuptools python python-pip

RUN apt-get install -y dos2unix libfontconfig git wget bzip2 libc6-dev --no-install-recommends && \
    pip install awscli && \
    apt-get autoremove --purge -y && \
    apt-get clean

RUN mkdir /docker-java-home
RUN wget --no-check-certificate https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
RUN tar -xvf openjdk-11.0.1_linux-x64_bin.tar.gz -C ./docker-java-home
ENV JAVA_HOME /docker-java-home/jdk-11.0.1
ENV JAVA_VERSION 11.0.1

CMD ["java"]