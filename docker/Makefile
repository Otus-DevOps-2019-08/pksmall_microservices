SHELL := /usr/bin/env bash
ORIGDIR := $(CURDIR)
USERNAME := $(USER_NAME)

# Run docker-compose
.PHONY: run-all
run-all:
	run-app
	run-monitor

.PHONY: run-app
run-app:
	docker-compose up -d

.PHONY: run-monitor
run-monitor: prometheus
	docker-compose -f docker-compose-monitoring.yml up -d

# Stop docker-compose
.PHONY: stop
stop:
	docker-compose down

.PHONY: stop-monitor
stop-monitor:
	docker-compose -f docker-compose-monitoring.yml down

# Make prometheus
.PHONY: prometheus
prometheus:
	cd ../monitoring/prometheus && docker build -t $(USERNAME)/prometheus . && cd $(ORIGDIR)

.PHONY: push-prometheus
push-prometheus: prometheus
	docker push $(USERNAME)/prometheus

# Make alertmanager
.PHONY: alertmanager
alertmanager:
	cd ../monitoring/alertmanager && docker build -t $(USERNAME)/alertmanager . && cd $(ORIGDIR)

.PHONY: push-alertmanager
push-alertmanager: alertmanager
	docker push $(USERNAME)/alertmanager

# Make grafana
.PHONY: grafana
grafana:
	cd ../monitoring/grafana && docker build -t $(USERNAME)/grafana . && cd $(ORIGDIR)

.PHONY: push-grafana
push-grafana: grafana
	docker push $(USERNAME)/grafana

# Make all images
.PHONY: build-all
build-all: prometheus
	cd ../src/ui && bash docker_build.sh && cd $(ORIGDIR)
	cd ../src/post-py && bash docker_build.sh && cd $(ORIGDIR)
	cd ../src/comment && bash docker_build.sh && cd $(ORIGDIR)
	cd ../monitoring/cloudprober && docker build -t $(USERNAME)/cloudprober . && cd $(ORIGDIR)
	prometheus
	alertmanager

# Push images to docker hub
.PHONY: push-all
push-all:
	docker push $(USERNAME)/ui
	docker push $(USERNAME)/comment
	docker push $(USERNAME)/post
	docker push $(USERNAME)/cloudprober
	push-prometheus
