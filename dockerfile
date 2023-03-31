FROM ubuntu:latest
#MAINTAINER siddharth singh
RUN echo 'creating ansible worker image'
RUN apt-get update && apt-get install openssh-server -y && apt-get install python3 -y && apt-get install ansible -y
Run apt-get install sudo -y && apt-get install vim -y
RUN useradd -m ansible && echo "ansible:ansible" | chpasswd && adduser ansible sudo
RUN mkdir -p /home/ansible/.ssh
#COPY /home/siddharth/.ssh/id_rsa.pub /home/ansible/.ssh/authorized_keys
RUN chown -R ansible:ansible /home/ansible/.ssh
#USER ansible
#WORKDIR /home/ansible
ENTRYPOINT echo "Ansible worker image is ready" && /bin/bash 
