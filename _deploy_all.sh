#!/usr/bin/env bash
source ./.env

./_deploy.sh php8.4-apache
./_deploy.sh php8.4-apache-locales
./_deploy.sh php8.4-fpm-alpine
