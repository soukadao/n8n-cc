up:
	docker compose up -d --build

exec:
	docker compose exec n8n sh

down:
	docker compose down

.PHONY: up exec down