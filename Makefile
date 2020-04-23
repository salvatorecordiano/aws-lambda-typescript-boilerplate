.PHONY: setup build container-bash

DOCKER_IMAGE_TAG=node-14.0
DOCKER_IMAGE_NAME=salvatorecordiano/aws-lambda-typescript-boilerplate

setup:
	docker pull ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
	docker run --rm -v `pwd`/project:/aws-lambda ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} yarn

build:
	docker run --rm -v `pwd`/project:/aws-lambda -v `pwd`/:/project-root -v `pwd`/docker/build.sh:/lambda-script/build.sh ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} /lambda-script/build.sh

container-bash:
	docker run -it --rm --name aws-lambda -v `pwd`/project:/aws-lambda -v `pwd`/:/project-root ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} /bin/bash

docker-build:
	docker build ./docker -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}

docker-push:
	docker push ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
