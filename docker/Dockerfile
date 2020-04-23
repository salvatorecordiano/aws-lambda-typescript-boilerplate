FROM node:14.0-stretch-slim

RUN set -ex \
    && apt-get update \
    && apt-get install -y zip \
    && apt-get purge -y --auto-remove

RUN yarn global add typescript
WORKDIR /aws-lambda
