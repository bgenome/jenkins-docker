FROM jenkins/jenkins:lts

MAINTAINER Guy Belotzerkovsky (guy.belotzerkovsky@radcom.co.il)

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY groovy/* /usr/share/jenkins/ref/init.groovy.d/
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080
EXPOSE 50000

