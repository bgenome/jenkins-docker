FROM jenkins/jenkins:lts

MAINTAINER Guy Belotzerkovsky (guy.belotzerkovsky@radcom.co.il)

COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080
EXPOSE 50000

