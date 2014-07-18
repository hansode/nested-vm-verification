#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

# Do some changes ...

su - vagrant -c "$SHELL -ex" <<EOS
  curl -fSkL https://raw.github.com/hansode/env-bootstrap/master/build-personal-env.sh | bash

  [[ -d work/repos/git/github.com/vagrant-setup ]] || {
    git clone https://github.com/hansode/vagrant-setup work/repos/git/github.com/vagrant-setup
  }
EOS
