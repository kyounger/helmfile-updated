ARG HELMFILE_VERSION=0.109.0

FROM quay.io/roboll/helmfile:helm3-v${HELMFILE_VERSION}
ARG HELMFILE_VERSION=0.109.0

LABEL version="${HELMFILE_VERSION}"
LABEL maintainer="kyounger@gmail.com"

WORKDIR /

RUN helm plugin uninstall diff
RUN helm plugin install https://github.com/databus23/helm-diff --version v3.1.1
