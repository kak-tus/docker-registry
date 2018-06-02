#!/usr/bin/env sh

addgroup -g $USER_GID user
adduser -h /home/user -G user -D -u $USER_UID user

su-exec user registry serve /etc/docker/registry/config.yml
