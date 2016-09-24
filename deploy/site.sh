#!/bin/sh

eval $(ssh-agent -s)  # Use the env vars from stdout.
chmod 600 travis_deploy_ghpages@paninj.org
ssh-add travis_deploy_ghpages@paninj.org
./gradlew --stacktrace --info deploy
