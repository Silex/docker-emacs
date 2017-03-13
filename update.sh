#!/usr/bin/env bash

set -e

while read branch; do
  version="$(echo $branch | sed -e 's/emacs-//g')"
  echo "Generating Dockerfile for $version.";
  mkdir -p $version
  sed -e "s/%%BRANCH%%/$branch/g" Dockerfile.template > $version/Dockerfile
done < BRANCHES
