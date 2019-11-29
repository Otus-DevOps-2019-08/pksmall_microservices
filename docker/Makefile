SHELL := /usr/bin/env bash
ORIGDIR := $(CURDIR)
USERNAME := $(USER_NAME)

# Run docker-compose
.PHONY: run
run:
	docker-compose up -d

# Stop docker-compose
.PHONY: stop
stop:
	docker-compose down

# Make all images
.PHONY: build-all
build-all:
	cd ../src/ui && bash docker_build.sh && cd $(ORIGDIR)
	cd ../src/post-py && bash docker_build.sh && cd $(ORIGDIR)
	cd ../src/comment && bash docker_build.sh && cd $(ORIGDIR)
	cd ../monitoring/cloudprober && docker build -t $(USERNAME)/cloudprober . && cd $(ORIGDIR)
	cd ../monitoring/prometheus && docker build -t $(USERNAME)/prometheus . && cd $(ORIGDIR)

# Push images to docker hub
.PHONY: push-all
push-all:
	docker push $(USERNAME)/ui
	docker push $(USERNAME)/comment
	docker push $(USERNAME)/post
	docker push $(USERNAME)/cloudprober
	docker push $(USERNAME)/prometheus
