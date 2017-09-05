# docker-meshblu-connector-builder

Docker base image for building Meshblu connector binaries.

# Basic Usage

```
docker run --rm --volume $PWD:/work octoblu/meshblu-connector-builder:linux-x64 \
  bash -c 'export HOME=/tmp/cache && meshblu-connector-pkger'
```
