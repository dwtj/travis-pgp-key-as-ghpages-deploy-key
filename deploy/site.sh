#!/bin/sh

ssh-agent -s #start the ssh agent
chmod 600 .travis/deploy_key.pem # this key should have push access
ssh-add .travis/deploy_key.pem
./gradlew deploy
