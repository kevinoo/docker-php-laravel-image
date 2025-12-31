#!/usr/bin/env bash
source ./.env

./_deploy.sh php8.4-fpm-alpine
./_deploy.sh php8.5-fpm-alpine
