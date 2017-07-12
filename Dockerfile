FROM hashicorp/terraform:latest

VOLUME ["/terraform"]

RUN mkdir -p /terraform/data

WORKDIR /terraform/data

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["terraform --help"]
