.PHONY: help up down restart logs connect connect-admin run status clean

SERVICE := clickhouse-server

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

up: ## Start ClickHouse server (detached)
	docker compose up -d $(SERVICE)

down: ## Stop ClickHouse server
	docker compose down

restart: ## Restart ClickHouse server
	docker compose restart $(SERVICE)

logs: ## Show server logs (follow mode)
	docker compose logs -f $(SERVICE)

connect: ## Connect with default user
	docker compose exec $(SERVICE) clickhouse-client

run: ## Run a query
	@docker compose exec $(SERVICE) clickhouse-client -q "$$(cat playground.sql | tr '\n' ' ')"

connect-admin: ## Connect with admin user
	docker compose exec $(SERVICE) clickhouse-client -u sql_console:admin

status: ## Show container status
	docker compose ps

clean: ## Stop and remove volumes (⚠️ deletes data)
	docker compose down -v
