# Pull base image.
FROM ubuntu:18.04

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jre-headless && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
