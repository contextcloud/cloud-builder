FROM gcr.io/cloud-builders/docker

ENV PATH=$PATH:/usr/bin/
ENTRYPOINT ["/usr/bin/ccb"]

ARG VERSION
RUN curl -L https://github.com/contextcloud/ccb/releases/download/${VERSION}/ccb-${VERSION}-linux-amd64.tar.gz | tar -C /usr/bin -xz