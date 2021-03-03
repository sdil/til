start-db:
	docker rm -f til-db || true
	docker run -d -it -e POSTGRES_PASSWORD=postgres -p 5432:5432 \
	--name til-db postgres:12.0-alpine

start-dev: start-db
	sleep 10 && mix ecto.create
	mix ecto.migrate
	mix phx.server
