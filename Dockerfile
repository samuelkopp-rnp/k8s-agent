FROM ubuntu:22.04

LABEL maintainer="samuel@brainyit.com.br"\
      vendor=BrainyIT \
      app-group-id=dagser-eduplay \
      app-artifact-id=k8s-agent
            
RUN apt update 
RUN apt upgrade -y 
RUN apt install -y apt-transport-https ca-certificates gnupg curl
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.asc] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list 
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg -o /usr/share/keyrings/cloud.google.asc 
RUN apt update 
RUN apt install -y google-cloud-sdk-gke-gcloud-auth-plugin kubectl
