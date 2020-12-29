build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

mysql-client:
	docker-compose exec db mysql -uroot -proot -hlocalhost pre-kakeibo

migration:
	docker-compose exec migration bash

migration/up:
	docker-compose exec migration bash -c "sql-migrate up"

migration/down:
	docker-compose exec migration bash -c "sql-migrate down"

migration/status:
	docker-compose exec migration bash -c "sql-migrate status"