all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build              - build all images"
	# @echo "   1. make pull             - pull all images"
	@echo "   1. make clean              - remove all images"
	@echo ""

build:
	@docker build --tag ds_slam:kinetic -f docker/dockerfile .
compose:
	@docker-compose -f docker/docker-compose.yml build 
clean:
	@docker rmi -f manager-container:v1.0.0
up:
	@docker-compose -f docker/docker-compose.yml up

exec:
	@docker exec -it dsslam-cuda10 /bin/bash