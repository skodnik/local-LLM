#!/usr/bin/make

include .env

.PHONY: up
up:
	docker-compose up --build --detach

.PHONY: down
down:
	docker-compose down --volumes --remove-orphans

.PHONY: start
start:
	docker-compose start

.PHONY: stop
stop:
	docker-compose stop


##############################################################################
# ollama                                                                     #
# https://ollama.com/library?sort=popular                                    #
##############################################################################

.PHONY: list
list:
	docker-compose exec ollama ollama list

.PHONY: models.du
models.du:
	du -sh ./ollama


##############################################################################
# llama2                                                                     #
# https://ollama.com/library/llama2                                          #
##############################################################################

.PHONY: pull.llama2
pull.llama2:
	docker-compose exec ollama ollama pull llama2

.PHONY: rm.llama2
rm.llama2:
	docker-compose exec ollama ollama rm llama2

.PHONY: run.llama2
run.llama2:
	docker-compose exec -it ollama ollama run llama2


##############################################################################
# mistral                                                                    #
# https://ollama.com/library/mistral                                         #
##############################################################################

.PHONY: pull.mistral
pull.mistral:
	docker-compose exec ollama ollama pull mistral

.PHONY: rm.mistral
rm.mistral:
	docker-compose exec ollama ollama rm mistral

.PHONY: run.mistral
run.mistral:
	docker-compose exec -it ollama ollama run mistral


##############################################################################
# codellama                                                                  #
# https://ollama.com/library/codellama                                       #
##############################################################################

.PHONY: pull.codellama
pull.codellama:
	docker-compose exec ollama ollama pull codellama

.PHONY: rm.codellama
rm.codellama:
	docker-compose exec ollama ollama rm codellama

.PHONY: run.codellama
run.codellama:
	docker-compose exec -it ollama ollama run codellama

