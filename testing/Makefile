.PHONY: image test

image:
	docker image build -t shellspec:latest .

test:
	docker container run --volume $(shell pwd):/src --rm -t shellspec:latest
