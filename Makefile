YAML = srcs/docker-compose.yaml
CMPS = docker-compose -f

.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell

build:
		$(CMPS) $(YAML) build
up:
		$(CMPS) $(YAML) up -d
start:
		$(CMPS) $(YAML) start
down:
		$(CMPS) $(YAML) down
destroy:
		$(CMPS) $(YAML) down -v
stop:
		$(CMPS) $(YAML) stop
restart:
		$(CMPS) $(YAML) stop
		$(CMPS) $(YAML) up -d
logs:
        $(CMPS) $(YAML) logs --tail=100 -f
logs-api:
		$(CMPS) $(YAML) logs --tail=100 -f api
ps:
		$(CMPS) $(YAML) ps
login-timescale:
		$(CMPS) $(YAML) exec timescale /bin/bash
login-api:
		$(CMPS) $(YAML) exec api /bin/bash
db-shell:
		$(CMPS) $(YAML) exec timescale psql -Upostgres