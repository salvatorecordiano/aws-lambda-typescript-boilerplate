yarn build
mkdir /deploy
cp -R /aws-lambda/dist/* /deploy
cd /deploy && zip -r /project-root/deploy.zip . && rm -fr /deploy
echo "deploy.zip ready to be uploaded on AWS!"
