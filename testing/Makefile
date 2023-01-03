.PHONY: prepare test

prepare:
	docker image build -t shellspec:latest .

test:
	docker container run --volume $(shell pwd):/src --rm shellspec:latest
