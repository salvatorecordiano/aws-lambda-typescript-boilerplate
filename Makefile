.PHONY: setup build container-bash

setup:
	docker pull salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5
	docker run --rm -v `pwd`/project:/aws-lambda salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5 yarn

build:
	docker run --rm -v `pwd`/project:/aws-lambda -v `pwd`/:/project-root salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5 /lambda-script/build.sh

container-bash:
	docker run -it --rm --name aws-lambda -v `pwd`/project:/aws-lambda -v `pwd`/:/project-root salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5 bash

docker-build:
	docker build ./docker -t salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5

docker-push:
	docker push salvatorecordiano/aws-lambda-typescript-boilerplate:node-13.5
