FROM ubuntu:latest

RUN apt-get update; \
    apt-get install openssh-server passwd net-tools -y; \
    mkdir -p /root/.ssh
WORKDIR /root/.ssh
COPY ./.ssh/id_rsa.pub ./authorized_keys
RUN chmod 600 ./authorized_keys

ENTRYPOINT service ssh restart && bash