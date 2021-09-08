from ubuntu:latest
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install -y \
openjdk-16-jdk-headless \
curl \
zip \
unzip \
build-essential

RUN curl -L --silent https://github.com/JetBrains/kotlin/releases/download/v1.5.30/kotlin-compiler-1.5.30.zip -o /tmp/kotlin-compiler-1.5.30.zip
RUN unzip /tmp/kotlin-compiler-1.5.30.zip -d /tmp
RUN curl -L --silent https://services.gradle.org/distributions/gradle-7.2-bin.zip -o /tmp/gradle-7.2-bin.zip
RUN mkdir /opt/gradle && unzip /tmp/gradle-7.2-bin.zip -d /opt/gradle
ENV PATH=$PATH:/opt/gradle/gradle-7.2/bin
