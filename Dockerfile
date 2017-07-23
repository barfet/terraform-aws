FROM alpine:3.5

ENV TERRAFORM_VERSION=0.9.11

RUN apk update && \
    apk add bash ca-certificates git openssl unzip wget && \
    cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/tmp/*

VOLUME ["/terraform"]

RUN mkdir -p /terraform/data

WORKDIR /terraform/data

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["terraform --help"]
