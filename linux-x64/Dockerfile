FROM octoblu/meshblu-connector-builder-base:linux-x64

RUN mkdir -p /usr/share/meshblu-sign
COPY key.gpg.enc /usr/share/meshblu-sign/key.gpg.enc

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

ENV DEBUG meshblu-connector-*,octodash

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian'
