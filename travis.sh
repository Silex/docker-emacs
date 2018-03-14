#!/usr/bin/env bash

set -e

# Determine Dockerhub name by splitting the "repo slug",
# i.e. if the GitHub repo is Silex/emacs then DOCKER_REPO=silex
DOCKER_REPO="$(echo $TRAVIS_REPO_SLUG | cut -d '/' -f 1 | tr '[:upper:]' '[:lower:]')"
DOCKER_IMG="emacs"

TRAVIS_CACHE="$HOME/emacs-src"
GIT_SRC_REPO="git://git.sv.gnu.org/emacs.git"

fetch()
{
  # Fetch and update sources from git. This works for branches
  # ("master") as well as tagged releases ("emacs-25.3"). However
  # checking out a tag leaves you in the 'detached HEAD' state such
  # that further pulls don't do anything. This is fine because git
  # doesn't permit tags to be moved.

  [[ ! -d "$TRAVIS_CACHE" ]] && mkdir "$TRAVIS_CACHE"

  if [[ ! -d "$TRAVIS_CACHE/$GIT_BRANCH" ]]; then
    echo "Cloning repository"
    git clone --branch "$GIT_BRANCH" --depth 1 "$GIT_SRC_REPO" "$TRAVIS_CACHE/$GIT_BRANCH"
  else
    echo "Updating repository"
    (
      cd "$TRAVIS_CACHE/$GIT_BRANCH"
      if [[ $(git name-rev --name-only --tags HEAD) == "undefined" ]]; then
        # We are on a branch
        git fetch --depth 1 origin "$GIT_BRANCH"
        git reset --hard "origin/$GIT_BRANCH"
      else
        # We are on a tag
        git fetch origin tag "$GIT_BRANCH"
        git checkout "$GIT_BRANCH"
      fi
      git clean -fdx
    )
  fi

  # Copy updated sources to docker build context, and then remove
  # the .git directory so it doesn't affect cache calculations
  cp -pR "$TRAVIS_CACHE/$GIT_BRANCH" .
  rm -rf "./$GIT_BRANCH/.git"
}

build()
{
  # branch "emacs-26.0.91" => version "26.0" => major "26"
  version="$(echo "$GIT_BRANCH" | cut -d "-" -f 2 | cut -d "." -f 1,2)"
  major="$(echo "$GIT_BRANCH" | cut -d "-" -f 2 | cut -d "." -f 1)"

  # "full" build, halt after first stage in Dockerfile
  echo "Building $DOCKER_REPO/$DOCKER_IMG:$version from source $GIT_BRANCH"
  docker pull "$DOCKER_REPO/$DOCKER_IMG:$version"
  docker build -t full \
         --pull \
         --target full \
         --cache-from "$DOCKER_REPO/$DOCKER_IMG:$version" \
         --build-arg="GIT_BRANCH=$GIT_BRANCH" \
         -f "Dockerfile.$major" .

  # "slim" build, run second stage in Dockerfile
  echo "Building $DOCKER_REPO/$DOCKER_IMG:$version-slim from source $GIT_BRANCH"
  docker pull "$DOCKER_REPO/$DOCKER_IMG:$version-slim"
  docker build -t slim \
         --pull \
         --cache-from "$DOCKER_REPO/$DOCKER_IMG:$version" \
         --cache-from "$DOCKER_REPO/$DOCKER_IMG:$version-slim" \
         --build-arg="GIT_BRANCH=$GIT_BRANCH" \
         -f "Dockerfile.$major" .

  # Assign the desired tags
  for tag in $DOCKER_TAGS; do
      echo "Tagging $DOCKER_REPO/$DOCKER_IMG:$tag"
      docker tag full "$DOCKER_REPO/$DOCKER_IMG:$tag"
      echo "Tagging $DOCKER_REPO/$DOCKER_IMG:$tag-slim"
      docker tag slim "$DOCKER_REPO/$DOCKER_IMG:$tag-slim"
  done
}

push()
{
  # DOCKER_USERNAME is empty for forked repositories
  # TRAVIS_PULL_REQUEST is "true" for pull requests
  # TRAVIS_BRANCH is the current branch or the PR target branch
  # TRAVIS_PULL_REQUEST_BRANCH is the PR source branch
  current_branch="${TRAVIS_PULL_REQUEST_BRANCH:-$TRAVIS_BRANCH}"
  if [[ ! -z "$DOCKER_USERNAME" ]] && [[ "$TRAVIS_PULL_REQUEST" != "true" ]] && \
     [[ "$current_branch" == "master" ]] || [[ "$current_branch" == "staging-"* ]]; then
    docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
    for tag in $DOCKER_TAGS; do
      echo "Pushing $DOCKER_REPO/$DOCKER_IMG:$tag"
      docker push "$DOCKER_REPO/$DOCKER_IMG:$tag"
      echo "Pushing $DOCKER_REPO/$DOCKER_IMG:$tag-slim"
      docker push "$DOCKER_REPO/$DOCKER_IMG:$tag-slim"
    done
  else
    echo "Not pushing"
  fi
}
