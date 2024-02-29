#!/usr/bin/env bash
source ./.env

./_deploy.sh php72
./_deploy.sh php72-locales
./_deploy.sh php81
./_deploy.sh php81-locales
./_deploy.sh php82
./_deploy.sh php82-locales
./_deploy.sh php83
./_deploy.sh php83-locales
