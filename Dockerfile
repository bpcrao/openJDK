FROM openjdk:11.0.2-slim

CMD ["bash"]

RUN apt-get update -y && \
    apt-get install -y python python-pip dos2unix libfontconfig git bzip2 libc6-dev --no-install-recommends && \
    pip install awscli && \
    apt-get autoremove --purge -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*