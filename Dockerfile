FROM ubuntu:16.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update -qq && apt-get install -y curl unzip zip
RUN apt-get install -y default-jdk
RUN curl -s get.sdkman.io | bash
RUN source "/root/.sdkman/bin/sdkman-init.sh" && sdk install grails

ENV APP_ROOT /usr/src/grails_app
WORKDIR $APP_ROOT
COPY ./grails_app $APP_ROOT
RUN /root/.sdkman/candidates/grails/current/bin/grails dependency-report
EXPOSE  8080
CMD /root/.sdkman/candidates/grails/current/bin/grails run-app
