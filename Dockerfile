FROM openjdk:8-jre-alpine
MAINTAINER Bao Ho <hogiabao2601@gmail.com>

ARG HBASE_VERSION=2.0.0
ARG PHOENIX_VERSION=5.0.0
ENV HBASE_HADOOP_VERSION=2.7.4
ENV REPLACEMENT_HADOOP_VERSION=2.8.5

# The busybox wget is broken, so we install a vanilla wget. Remove when resolved.
# See https://github.com/gliderlabs/docker-alpine/issues/292
RUN apk --no-cache --update add bash ca-certificates gnupg openssl python tar wget
