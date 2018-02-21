#!/usr/bin/env bash


# Determine Dockerhub name by splitting the "repo slug",
# i.e. if the GitHub repo is Silex/emacs then
# DOCKER_REPO=silex

DOCKER_REPO=$(echo $TRAVIS_REPO_SLUG | cut -d "/" -f 1 | tr '[:upper:]' '[:lower:]')
DOCKER_IMG=emacs

build()
{
  for tag in $DOCKER_TAGS; do
    major=$(echo $tag | cut -d "." -f 1)  # i.e. "24.5" => "24"
    echo Build $DOCKER_REPO/$DOCKER_IMG:$tag from source $GIT_BRANCH
    docker build -t $DOCKER_REPO/$DOCKER_IMG:$tag \
           --build-arg="GIT_BRANCH=$GIT_BRANCH" \
           -f Dockerfile.$major .
  done
}

push()
{
  if [ "$TRAVIS_BRANCH" == "master" ]; then
    docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
    for tag in $DOCKER_TAGS; do
      echo Push $DOCKER_REPO/$DOCKER_IMG:$tag
      docker push $DOCKER_REPO/$DOCKER_IMG:$tag
    done
  fi
}
