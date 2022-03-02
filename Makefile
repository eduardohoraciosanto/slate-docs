build: 
	@docker-compose build

slate-serve:
	@docker-compose up

slate-static:
	@docker-compose run --rm --service-ports slate bundle exec middleman build