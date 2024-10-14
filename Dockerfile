FROM quay.io/podman/stable

RUN yum install -y java-17-openjdk-devel

ENV JAVA_HOME=/etc/alternatives/jre_17

ENV GRADLE_USER_HOME="/home/podman/.gradle"
#
USER podman
RUN mkdir ${GRADLE_USER_HOME} \
    && chmod -R 755 ${GRADLE_USER_HOME}

COPY . /app

USER root
RUN rm -rf /app/.gradle
RUN mkdir -p /app/.gradle
RUN chmod -R 777 /app

ENV TESTCONTAINERS_RYUK_DISABLED=true
ENV DOCKER_HOST=unix:///tmp/podman.sock