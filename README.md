# Local LLM with web ui

Based on [Ollama](https://ollama.com) and [Docker](https://www.docker.com/).
Required – [make](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents).

Most popular models – [ollama.com:popular](https://ollama.com/library?sort=popular)

## Containers help

```shell
make help
```

## Containers build and run

```shell
make up
```

## Installed models

```shell
make list
```

## Run llama2 model

```shell
make run.llama2
```

[Model](https://ollama.com/library/llama2) description.

## Run mistral model

```shell
make run
```

[Model](https://ollama.com/library/mistral) description.

## Run codellama model

```shell
make run.codellama
```

[Model](https://ollama.com/library/llava) description.

## Run llava model

```shell
make run.llava
```

[Model](https://ollama.com/library/llava) description.

## web ui

1. [web-ui](http://127.0.0.1:3300)
   source – [ollama-webui/ollama-webui](https://github.com/ollama-webui/ollama-webui/tree/main)
2. [chatbot](http://127.0.0.1:3000)
   source – [ivanfioravanti/chatbot-ollama](https://github.com/ivanfioravanti/chatbot-ollama)
