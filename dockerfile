FROM ibmjava:8-sdk

MAINTAINER IBM Java engineering at IBM Cloud

RUN apt-get update 
WORKDIR /project
ADD oss /project/oss
ADD startServer.sh /project


EXPOSE 8080
RUN cd /project && \
    chmod +x /project/startServer.sh 
ENTRYPOINT /project/startServer.sh