FROM ubuntu:bionic

ARG VCS_REF
ARG BUILD_DATE

LABEL org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.name="ubuntu-shell-utils" \
      org.label-schema.description="A bash environment with basic tools to allow packaging of software builds via shell scripts" \
      org.label-schema.vcs-ref="$VCS_REF" \
      org.label-schema.vcs-url="https://github.com/turtletramp/ubuntu-shell-utils.git" \
      org.label-schema.schema-version="1.0"

RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends \
        wget \
        bash \
        git \
        zip \
        unzip \
        p7zip \
	p7zip-full \
    && apt-get clean


