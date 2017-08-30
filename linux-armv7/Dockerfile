FROM octoblu/meshblu-connector-builder-base:linux-armv7

RUN [ "cross-build-start" ]

RUN mkdir -p /usr/share/meshblu-sign
COPY key.gpg.enc /usr/share/meshblu-sign/key.gpg.enc

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

RUN /bin/bash -c 'env HOME=/tmp/cache yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian && \
 yarn global add "pkg-fetch@$(meshblu-connector-pkger --pkg-fetch-version)"'

RUN /bin/bash -c 'pkg-fetch -n node8.3.0 -p linux -a armv6 -b true \
  && mv $HOME/.pkg-cache/$(meshblu-connector-pkger --pkg-fetch-version)/built-v8.3.0-linux-arm{v6,v7}'

ENV DEBUG meshblu-connector-*,octodash

RUN [ "cross-build-end" ]
ENTRYPOINT [ "/usr/bin/qemu-arm-static", "/usr/bin/env", "QEMU_EXECVE=1" ]
