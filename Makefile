#!make

.PHONY: build
build:
	@docker-compose build

.PHONY: start
start:
	@docker-compose up web

.PHONY: db.create
db.create:
	@docker-compose run --rm web rails db:create

.PHONY: test
test:
	@docker-compose run --rm web bundle exec rspec

.PHONY: lint
lint:
	@docker-compose run --rm web bundle exec rubocop
