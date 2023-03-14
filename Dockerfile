ARG JENKINS_VERSION=2.332.2
FROM jenkins/jenkins:$JENKINS_VERSION
COPY --chown=jenkins:jenkins config/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins config/plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY --chown=jenkins:jenkins config/build_agents.yaml /usr/share/jenkins/ref/casc_configs/build_agents.yaml
COPY --chown=jenkins:jenkins config/message.yaml /usr/share/jenkins/ref/casc_configs/message.yaml
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
