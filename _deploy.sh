#!/usr/bin/env bash
source ./.env

_echo_script_usage(){
	echo " "
  echo "Deploy script usage: "
  echo " "
  echo "./_deploy.sh [php81|php82]"
  echo " "
}


if [ -z "$1" ] || [ "$1" == '--help' ] || [ "$1" == '-h' ]; then
  _echo_script_usage ""
	exit
fi

TAG=""
if [ "$1" == 'php72' ]; then
  TAG="php7.2-apache"
fi
if [ "$1" == 'php72-locales' ]; then
  TAG="php7.2-apache-locales"
fi
if [ "$1" == 'php81' ]; then
  TAG="php8.1-apache"
fi
if [ "$1" == 'php81-locales' ]; then
  TAG="php8.1-apache-locales"
fi
if [ "$1" == 'php82' ]; then
  TAG="php8.2-apache"
fi
if [ "$1" == 'php82-locales' ]; then
  TAG="php8.2-apache-locales"
fi
if [ "$1" == 'php83' ]; then
  TAG="php8.3-apache"
fi
if [ "$1" == 'php83-locales' ]; then
  TAG="php8.3-apache-locales"
fi

if [ "$TAG" == '' ]; then
  echo " "
  echo "Error, PHP version is empty or invalid."
  _echo_script_usage ""
	exit
fi

echo "$WEB_SERVER_IMAGE:$TAG"
docker build -t "$WEB_SERVER_IMAGE":"$TAG" --file "Dockerfile-$1-apache" .
docker push "$WEB_SERVER_IMAGE":"$TAG"
