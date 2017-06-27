FROM octoblu/meshblu-connector-builder-base:linux-armv7

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

RUN [ "cross-build-start" ]

ENV DEBUG meshblu-connector-*

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian'

RUN [ "cross-build-end" ]
ENTRYPOINT [ "/usr/bin/qemu-arm-static", "/usr/bin/env", "QEMU_EXECVE=1" ]
