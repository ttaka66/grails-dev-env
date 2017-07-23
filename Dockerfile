FROM ubuntu:16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update -qq && apt-get install -y curl unzip zip
RUN apt-get install -y default-jdk
RUN curl -s get.sdkman.io | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh" && sdk install grails && sdk install gradle

#ENV APP_ROOT /usr/src/grails_app
#ENV GRADLE_USER_HOME /gradle
#WORKDIR $APP_ROOT
#COPY ./grails_app $APP_ROOT
#EXPOSE  8080
#CMD ["/root/.sdkman/candidates/grails/current/bin/grails", "run-app"]
