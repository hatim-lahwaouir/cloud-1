.PHONY: kill build down


kill:
	docker compose -f ./srcs/docker-compose.yml kill

up:
	docker compose -f ./srcs/docker-compose.yml build && docker compose -f ./srcs/docker-compose.yml create && docker compose -f ./srcs/docker-compose.yml start

down:
	docker compose -f ./srcs/docker-compose.yml down

logs:
	docker compose -f ./srcs/docker-compose.yml logs
