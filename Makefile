# Makefile para orquestrar os microsserviços

.PHONY: up down build test clean help

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

test:
	curl -X POST http://localhost:8080/orders \
	  -H "Content-Type: application/json" \
	  -d '{"id": 1, "item": "Widget", "quantity": 10}'

clean:
	docker system prune -f

help:
	@echo ""
	@echo "Comandos disponíveis:"
	@echo "  make up        - Sobe os serviços com Docker Compose"
	@echo "  make down      - Derruba os containers"
	@echo "  make build     - Builda as imagens Docker"
	@echo "  make test      - Executa um teste de criação de pedido via curl"
	@echo "  make clean     - Remove containers/imagens/paradas (Docker prune)"
	@echo "  make help      - Mostra esta ajuda"
