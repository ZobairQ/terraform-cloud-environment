FROM ubuntu:20.04

LABEL maintainer="Zobair Qauomi<github.com/ZobairQ"

ENV HOME=/root
COPY entrypoint.sh /tmp
WORKDIR /tmp

RUN apt-get update \
    && apt install -y curl gnupg2 lsb-release software-properties-common \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update && apt-get install terraform \
    && curl -fsSL https://code-server.dev/install.sh | sh \
    && chmod +x entrypoint.sh

EXPOSE 80

ENTRYPOINT ./entrypoint.sh