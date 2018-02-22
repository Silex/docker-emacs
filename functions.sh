#!/usr/bin/env bash

# Determine Dockerhub name by splitting the "repo slug",
# i.e. if the GitHub repo is Silex/emacs then DOCKER_REPO=silex
DOCKER_REPO=$(echo $TRAVIS_REPO_SLUG | cut -d "/" -f 1 | tr '[:upper:]' '[:lower:]')
DOCKER_IMG=emacs

TRAVIS_CACHE=$HOME/emacs-src
GIT_SRC_REPO=git://git.sv.gnu.org/emacs.git

fetch()
{
  # Fetch and update sources from git. This works for branches
  # ("master") as well as tagged releases ("emacs-25.3"). However
  # checking out a tag leaves you in the 'detached HEAD' state such
  # that further pulls don't do anything. This is fine because git
  # doesn't permit tags to be moved.

  [ ! -d $TRAVIS_CACHE ] &&  mkdir $TRAVIS_CACHE

  if [ ! -d $TRAVIS_CACHE/$GIT_BRANCH ]; then
    echo git clone --branch $GIT_BRANCH --depth 1 $GIT_SRC_REPO $TRAVIS_CACHE/$GIT_BRANCH
    git clone --branch $GIT_BRANCH --depth 1 $GIT_SRC_REPO $TRAVIS_CACHE/$GIT_BRANCH
  else
    echo "cd $TRAVIS_CACHE/$GIT_BRANCH; git pull --depth 1"
    (cd $TRAVIS_CACHE/$GIT_BRANCH; git pull --depth 1)
  fi

  # Copy updated sources to docker build context, and then remove
  # the .git directory so it doesn't affect cache calculations
  cp -pR $TRAVIS_CACHE/$GIT_BRANCH .
  rm -rf ./$GIT_BRANCH/.git
}

build()
{
  for tag in $DOCKER_TAGS; do
    echo Building $DOCKER_REPO/$DOCKER_IMG:$tag from source $GIT_BRANCH

    # Select Dockerfile based on major number, i.e. "24.5" => "24"
    major=$(echo $tag | cut -d "." -f 1)

    # Pull previous image and use it as cache in the build.
    # This is how docker knows if the sources have changed.
    docker pull $DOCKER_REPO/$DOCKER_IMG:$tag
    docker build -t $DOCKER_REPO/$DOCKER_IMG:$tag \
           --cache-from $DOCKER_REPO/$DOCKER_IMG:$tag \
           --build-arg="GIT_BRANCH=$GIT_BRANCH" \
           --pull \
           -f Dockerfile.$major .
  done
}

push()
{
  if [ "$TRAVIS_BRANCH" == "master" ]; then
    docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
    for tag in $DOCKER_TAGS; do
      echo Pushing $DOCKER_REPO/$DOCKER_IMG:$tag
      docker push $DOCKER_REPO/$DOCKER_IMG:$tag
    done
  fi
}
