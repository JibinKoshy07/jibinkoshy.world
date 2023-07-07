FROM jenkins/jenkins:lts
USER root
#RUN curl -sSL https://get.docker.com/ | sh
#RUN groupadd docker
RUN apt update
RUN apt install docker.io -y
RUN usermod -aG docker jenkins
#RUN systemctl  start docker 
USER jenkins
