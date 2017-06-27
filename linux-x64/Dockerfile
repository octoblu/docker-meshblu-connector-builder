FROM octoblu/meshblu-connector-builder-base:linux-x64

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

ENV DEBUG meshblu-connector-*

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian'
