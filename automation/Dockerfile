FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl

# Install nodejs and npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get -y install nodejs
RUN node --version
RUN npm --version

# Install Chrome
RUN curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install google-chrome-stable
RUN google-chrome --version

# Install Firefox
RUN apt-get -y install firefox
RUN firefox --version

# Install Java (for Selenium)
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install default-jre-headless
RUN apt-get update && apt-get -y install ca-certificates-java && apt-get clean && update-ca-certificates -f
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# Create user
RUN groupadd --gid 1000 automation
RUN useradd --uid 1000 --gid 1000 -m -s /usr/sbin/nologin automation
RUN echo "automation:automation" | chpasswd
USER automation

WORKDIR /opt/automation