DOCKER = $(shell which docker)

init:
	cp nats/.env.example nats/.env;
	cp postgres/.env.example postgres/.env;

pull:
	$(DOCKER) compose \
		-f nats/docker-compose.yml \
		-f postgres/docker-compose.yml pull

up:
	$(DOCKER) compose \
		-f nats/docker-compose.yml \
		-f postgres/docker-compose.yml \
		-f redis/docker-compose.yml \
		up -d

stop:
	$(DOCKER) compose \
		-f nats/docker-compose.yml \
		-f postgres/docker-compose.yml \
		-f redis/docker-compose.yml \
		stop
