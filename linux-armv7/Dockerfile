FROM octoblu/meshblu-connector-builder-base:linux-armv7-node-v8.1.0

RUN [ "cross-build-start" ]

RUN mkdir -p /usr/share/meshblu-sign
COPY key.gpg.enc /usr/share/meshblu-sign/key.gpg.enc

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

ENV DEBUG meshblu-connector-*,octodash

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger@1.7.6 \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian'

RUN [ "cross-build-end" ]
ENTRYPOINT [ "/usr/bin/qemu-arm-static", "/usr/bin/env", "QEMU_EXECVE=1" ]
