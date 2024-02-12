#!/usr/bin/make

# Makefile readme (ru): http://linux.yaroslavl.ru/docs/prog/gnu_make_3-79_russian_manual.html
# Makefile readme (en): https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents

include .env

.DEFAULT_GOAL: help

# This will output the help for each task. thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help: ## Show this help
	@printf "\033[33m%s:\033[0m\n" 'Available commands'
	@awk 'BEGIN {FS = ":.*?## "} /^[.a-zA-Z0-9_-]+:.*?## / {printf "  \033[32m%-18s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: up
up: ## Build containers
	docker-compose up --build --detach

.PHONY: down
down: ## Remove containers
	docker-compose down --volumes --remove-orphans

.PHONY: start
start: ## Start containers
	docker-compose start

.PHONY: stop
stop: ## Stop containers
	docker-compose stop


##############################################################################
# ollama                                                                     #
# https://ollama.com/library?sort=popular                                    #
##############################################################################

.PHONY: list
list: ## List models
	docker-compose exec ollama ollama list

.PHONY: models.du
models.du: ## Models dir size
	du -sh ./ollama


##############################################################################
# llama2                                                                     #
# https://ollama.com/library/llama2                                          #
##############################################################################

.PHONY: pull.llama2
pull.llama2: ## Pull model llama2
	docker-compose exec ollama ollama pull llama2

.PHONY: rm.llama2
rm.llama2: ## Remove model llama2
	docker-compose exec ollama ollama rm llama2

.PHONY: run.llama2
run.llama2: ## Run model llama2
	docker-compose exec -it ollama ollama run llama2


##############################################################################
# mistral                                                                    #
# https://ollama.com/library/mistral                                         #
##############################################################################

.PHONY: pull.mistral
pull.mistral: ## Pull model mistral
	docker-compose exec ollama ollama pull mistral

.PHONY: rm.mistral
rm.mistral: ## Remove model mistral
	docker-compose exec ollama ollama rm mistral

.PHONY: run.mistral
run.mistral: ## Run model mistral
	docker-compose exec -it ollama ollama run mistral


##############################################################################
# codellama                                                                  #
# https://ollama.com/library/codellama                                       #
##############################################################################

.PHONY: pull.codellama
pull.codellama: ## Pull model codellama
	docker-compose exec ollama ollama pull codellama

.PHONY: rm.codellama
rm.codellama: ## Remove model codellama
	docker-compose exec ollama ollama rm codellama

.PHONY: run.codellama
run.codellama: ## Run model codellama
	docker-compose exec -it ollama ollama run codellama

