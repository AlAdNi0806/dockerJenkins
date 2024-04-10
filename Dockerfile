# Используйте официальный образ Jenkins LTS
FROM jenkins/jenkins:lts

# Установите необходимые плагины Jenkins
# Здесь пример установки плагина Pipeline
USER root
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    wget -q -O - https://updates.jenkins.io/download/plugins/pipeline/latest/pipeline.hpi > /usr/share/jenkins/ref/plugins/pipeline.hpi

# Переключитесь обратно на пользователя jenkins
USER jenkins
