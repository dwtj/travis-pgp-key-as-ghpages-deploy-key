#!/bin/sh

DEPLOY_KEY="deploy/ghpages_deploy_key"
eval $(ssh-agent -s)  # Use the env vars from stdout.
chmod 600 "$DEPLOY_KEY"
ssh-add "$DEPLOY_KEY"
./gradlew deploy
