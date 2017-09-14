FROM octoblu/meshblu-connector-builder-base:linux-armv7

RUN [ "cross-build-start" ]

RUN mkdir -p /usr/share/meshblu-sign
COPY key.gpg.enc /usr/share/meshblu-sign/key.gpg.enc

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

ENV PKG_CACHE_PATH /root/.pkg-cache

RUN /bin/bash -c 'export HOME=/tmp/cache && yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger@^1.10.0 \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian@1.6.0 && \
 yarn global add "pkg-fetch@$(meshblu-connector-pkger --pkg-fetch-version)"'

RUN /bin/bash -c 'mkdir -p $PKG_CACHE_PATH/v2.3 && \
  curl -sfL https://s3-us-west-2.amazonaws.com/meshblu-connector/pkg/v2.3/built-v8.3.0-linux-armv7 \
  -o $PKG_CACHE_PATH/v2.3/built-v8.3.0-linux-armv7'

ENV DEBUG meshblu-connector-*,octodash,pkg

RUN [ "cross-build-end" ]
ENTRYPOINT [ "/usr/bin/qemu-arm-static", "/usr/bin/env", "QEMU_EXECVE=1" ]
