FROM ubuntu:latest

# make sure apt is up to date
RUN apt-get update

# install nodejs and npm
RUN apt-get install -y nodejs npm git git-core

ADD conf/ssh /root/.ssh
RUN chmod 500 /root/.ssh/id_rsa*
RUN ssh-keyscan -t rsa github.org > ~/.ssh/known_hosts


ADD start.sh /tmp/

RUN chmod +x /tmp/start.sh

CMD ./tmp/start.sh


