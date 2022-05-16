# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

mkdir store_api_tdd
cd store_api_tdd
docker pull ruby:3.0.3
mkdir store_api
docker run -itd --rm --name proyect_store --workdir /home --user $(id -u):$(id -g) --mount type=bind,source="$(pwd)/store_api",target=/home/store_api ruby:3.0.3
docker exec -it proyect_store bash
touch store_api/example
rm store_api/example
gem install rail -v 6.1.6
rails new store_api -f -d postgresql --api
exit
docker container stop proyect_store
cd store_api
touch Dockerfile
mkdir entrypoints
touch entrypoints/docker-entrypoint.sh
chmod +x entrypoints/docker-entrypoint.sh

docker exec -it rails_api_tdd_store_api_1 bash
