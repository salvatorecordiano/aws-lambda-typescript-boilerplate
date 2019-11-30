#!/bin/bash
docker run --rm -v `pwd`/project:/aws-lambda -w /aws-lambda node:13.1.0-stretch-slim yarn
