#!/bin/sh

ssh-agent -s
chmod 600 travis_deploy_ghpages@paninj.org
ssh-add travis_deploy_ghpages@paninj.org
./gradlew deploy
