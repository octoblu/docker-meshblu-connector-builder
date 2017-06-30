#!/bin/bash

set -e

build_and_deploy() {
  local name="$1"
  pushd ./$name > /dev/null
    docker build --no-cache -t "local/meshblu-connector-builder:$name" .
    docker tag "local/meshblu-connector-builder:$name" "octoblu/meshblu-connector-builder:$name"
    docker push "octoblu/meshblu-connector-builder:$name"
  popd > /dev/null
}

main() {
  build_and_deploy 'linux-x64'
  build_and_deploy 'linux-x86'
  build_and_deploy 'linux-armv7'
}

main "$@"
