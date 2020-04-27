DOCKER_APP_NAME?=fedor-test-task
DOCKER_BUILD_TAG=$(DOCKER_APP_NAME)-build

build:
	docker build -t $(DOCKER_BUILD_TAG) -f docker/Dockerfile ./

run:
	docker run --rm -it -p 8888:8888 \
			-v "$(PWD)":/tf \
			--name $(DOCKER_APP_NAME) \
			$(DOCKER_BUILD_TAG)
