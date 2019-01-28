include .env

CONTAINER-RUN=docker-compose run --rm --user=$$UID:$$GID php

### COMPOSER INSTALL ###
.PHONY: composer-install
composer-install:
	$(CONTAINER-RUN) composer install

### BUILD CONTAINERS ###
.PHONY: container-build
containers:
	docker-compose build

### LOG INTO CONTAINER ###
.PHONY: container-run
container-run:
	$(CONTAINER-RUN) bash
