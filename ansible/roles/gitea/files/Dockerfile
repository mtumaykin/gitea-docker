FROM docker.gitea.com/gitea:1.25.2

LABEL maintainer="m.tumaykin"
LABEL description="Create Gitea docker image"
LABEL version="1.0"

USER root

WORKDIR /data

VOLUME ["/data", "/etc/gitea"]

# COPY app.ini /etc/gitea/app.ini

EXPOSE 3000 22