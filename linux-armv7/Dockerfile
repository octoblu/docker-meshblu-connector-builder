FROM octoblu/meshblu-connector-builder-base:linux-armv7

RUN [ "cross-build-start" ]

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian'

RUN [ "cross-build-end" ]