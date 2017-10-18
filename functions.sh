#!/usr/bin/env bash

build()
{
  for tag in $DOCKER_TAGS; do
    docker build -t silex/emacs:$tag --build-arg="GIT_BRANCH=$GIT_BRANCH" .
  done
}

push()
{
  if [ "$TRAVIS_BRANCH" == "master" ]; then
    docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
    for tag in $DOCKER_TAGS; do
      docker push silex/emacs:$tag
    done
  fi
}
