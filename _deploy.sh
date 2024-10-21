#!/usr/bin/env bash
source ./.env

_echo_script_usage(){
	echo " "
  echo "Deploy script usage: "
  echo " "
  echo "./_deploy.sh [php7.2-apache|php8.1-apache|php8.2-apache|php8.3-apache]"
  echo " "
}

if [ -z "$1" ] || [ "$1" == '--help' ] || [ "$1" == '-h' ]; then
  _echo_script_usage ""
	exit
fi

TAG="$1"

if [ "$TAG" == '' ]; then
  echo " "
  echo "Error, PHP version is empty or invalid."
  _echo_script_usage ""
	exit
fi


DOCKER_FILE="Dockerfile-"${TAG//\./}

echo "$WEB_SERVER_IMAGE:$TAG"
docker build -t "$WEB_SERVER_IMAGE":"$TAG" --file "$DOCKER_FILE" .
docker push "$WEB_SERVER_IMAGE":"$TAG"
