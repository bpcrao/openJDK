FROM debian:stretch-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		bzip2 \
		unzip \
		xz-utils \
		wget \
		python \
		python-setuptools \
		python-pip \
		dos2unix \
		git \
		bzip2 \
		libc6-dev\

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN mkdir /docker-java-home
RUN  wget --no-check-certificate https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
RUN tar -xvf openjdk-11.0.1_linux-x64_bin.tar.gz -C ./docker-java-home

ENV JAVA_HOME /docker-java-home/jdk-11.0.1

ENV JAVA_VERSION 11.0.1