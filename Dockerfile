ARG IMAGE=postgres
ARG VERSION=latest

FROM ${IMAGE}:${VERSION}

LABEL maintainer="Madalin Ignisca"
LABEL version="1.x"
LABEL description="Container image for postgresql with postgis"
LABEL repo="https://github.com/madalinignisca/postgis"

RUN apt-get update \
    && apt-get upgrade --no-install-recommends -y \
    && apt-get install --no-install-recommends -y \
      postgresql-13-postgis-3
