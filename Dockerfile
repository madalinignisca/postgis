ARG IMAGE=postgres
ARG VERSION=14

FROM ${IMAGE}:${VERSION}

ARG POSTGRES=14
ARG POSTGIS=3

LABEL maintainer="Madalin Ignisca"
LABEL version="1.x"
LABEL description="Container image for postgresql with postgis"
LABEL repo="https://github.com/madalinignisca/postgis"

RUN apt-get update \
    && apt-get upgrade --no-install-recommends -y \
    && apt-get install --no-install-recommends -y \
      postgresql-${POSTGRES}-postgis-${POSTGIS} \
      postgresql-${POSTGRES}-postgis-${POSTGIS}-scripts
