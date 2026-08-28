# What

# Why

# Checklist

- [ ] I ran `bin/images --generate` to spread my changes everywhere.
- [ ] I built the images locally for both operating systems, which also runs
      `emacs --version` on every image it builds:

      bin/build --os debian --version 31.1 --subdirs ci,ci/cask,ci/eask,ci/eldev,ci/keg
      bin/build --os alpine --version 31.1 --subdirs ci,ci/cask,ci/eask,ci/eldev,ci/keg

<!--
The build checks are skipped for pull requests from forks, because GitHub does
not pass repository secrets to them and CI cannot reach the registry mirror.
The checklist above stands in for them.
-->
