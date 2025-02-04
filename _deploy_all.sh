#!/usr/bin/env bash
source ./.env

./_deploy.sh php8.1-apache
./_deploy.sh php8.1-apache-locales

./_deploy.sh php8.2-apache
./_deploy.sh php8.2-apache-locales
./_deploy.sh php8.2-fpm-alpine

./_deploy.sh php8.3-apache
./_deploy.sh php8.3-apache-locales
./_deploy.sh php8.3-fpm-alpine

./_deploy.sh php8.4-apache
./_deploy.sh php8.4-apache-locales
./_deploy.sh php8.4-fpm-alpine