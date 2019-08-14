# This image is used in .gitlab-ci.yml to create the containers where the jobs will be executed (through docker-in-docker socket)
#
# To build and push it to your registry:
# $ docker build  -f Dockerfile -t docker_builder:latest .
# $ docker push xsmarty/docker_builder:latest

from docker:latest

RUN apk add --no-cache py-pip
RUN apk add --no-cache docker-compose
RUN apk add --no-cache curl
RUN apk add --no-cache perl
RUN apk add --no-cache bash
RUN apk add --no-cache git
RUN apk add --no-cache grep

ARG VERSION="1.0"
ARG SHA=0000
ENV IMAGE_VERSION=$VERSION
ENV IMAGE_SHA=$SHA
LABEL version=${IMAGE_VERSION}