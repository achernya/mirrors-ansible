#!/bin/bash
export JENKINS_USER_ID=admin
export JENKINS_API_TOKEN=$(cat /var/lib/jenkins/secrets/initialAdminPassword)
export JENKINS_URL=http://localhost:8080/

cli='java -jar /root/jenkins-cli.jar '

${cli} install-plugin {{ item }} && touch /root/installed_{{ item }}
