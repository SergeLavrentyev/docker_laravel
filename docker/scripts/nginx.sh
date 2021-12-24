#!/usr/bin/env bash

touch /etc/nginx/conf.d/docker.conf
envsubst '$PROJECT_PATCH, $PHP_HOST' < /etc/nginx/conf.d/docker.conf.template > /etc/nginx/conf.d/docker.conf
nginx -g "daemon off;"
