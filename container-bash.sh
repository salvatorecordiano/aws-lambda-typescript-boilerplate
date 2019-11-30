#!/bin/bash
docker run -it --rm --name aws-lambda -v `pwd`/project:/aws-lambda -w /aws-lambda node:13.1.0-stretch-slim bash
