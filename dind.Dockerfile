FROM docker:dind

LABEL maintainer="samuel@brainyit.com.br"\
      vendor=BrainyIT \
      app-group-id=dagser-eduplay 
      
       
RUN apk update && apk upgrade       
RUN apk --update --no-cache add ca-certificates python3 
RUN wget "https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v2.1.18/docker-credential-gcr_linux_amd64-2.1.18.tar.gz" -O /tmp/gcr.tar.gz
RUN tar -xzvf /tmp/gcr.tar.gz -C /usr/local/bin 
RUN rm  /tmp/gcr.tar.gz