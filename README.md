# Docker Image for Laravel 10.x with Composer and PHP extensions

## Docker Hub URL
[![Docker Hub URL](https://img.shields.io/badge/kevinoo%2Fphp--laravel--basic--image-blue?style=for-the-badge&logo=docker&label=Docker%20Hub&link=https%3A%2F%2Fhub.docker.com%2Fr%2Fkevinoo%2Fphp-laravel-basic-image)](https://hub.docker.com/r/kevinoo/php-laravel-basic-image)
[![Docker Image Pull](https://img.shields.io/docker/pulls/kevinoo/php-laravel-basic-image?logo=docker&style=for-the-badge)](https://hub.docker.com/r/kevinoo/php-laravel-basic-image)

## Run without a `Dockerfile`
docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html kevinoo/php-laravel-basic-image:[TAG]

## How to install
- Run the image and follow the [Laravel Documentation](https://laravel.com/docs/10.x/installation#creating-a-laravel-project)

## PHP extensions enabled
- pdo (pgsql, mysqli)
- gettext
- zip
- redis
- gd

## Developers
- Kevin Lucich (info@lucichkevin.it)

## Builds project

### Build and push a docker's image 
> ./_deploy.sh [php81|php82|php83]
> 
### Build and push all dockers' images 
> ./_deploy_all.sh
