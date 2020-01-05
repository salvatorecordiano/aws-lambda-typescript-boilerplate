# AWS Lambda Boilerplate (TypeScript)

- Run `make setup` to install dependencies
- Run `make container-bash` to use bash inside container
- Run `make build` to create a build

## Deploy

If you want to create and deploy your Lambda using `aws-cli`

- Install `aws-cli`
- Read [docs](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-awscli.html) and run `aws configure` to setup your environment

### Create Lambda function

```
aws lambda create-function --function-name aws-lambda-typescript-boilerplate \
--zip-file fileb://deploy.zip --handler index.handler --runtime nodejs10.x \
--role arn:aws:iam::YOUR_ROLE_HERE
```

### Update Lambda function

```
aws lambda update-function-code --function-name aws-lambda-typescript-boilerplate --zip-file fileb://deploy.zip
```
