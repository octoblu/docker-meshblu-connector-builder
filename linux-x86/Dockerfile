FROM octoblu/meshblu-connector-builder-base:linux-x86

RUN mkdir -p /usr/share/meshblu-sign
COPY key.gpg.enc /usr/share/meshblu-sign/key.gpg.enc

COPY upload-deb-s3 /usr/local/bin/upload-deb-s3

ENV PKG_CACHE_PATH /root/.pkg-cache

RUN /bin/bash -c 'export HOME=/tmp/cache && yarn global add \
 node-gyp \
 node-pre-gyp \
 meshblu-connector-pkger@^1.9.1 \
 meshblu-connector-uploader-github \
 meshblu-connector-installer-debian && \
 yarn global add "pkg-fetch@$(meshblu-connector-pkger --pkg-fetch-version)"'

RUN /bin/bash -c 'export HOME=/tmp/cache && pkg-fetch -n node8.3.0 -p linux -a x64'

ENV DEBUG meshblu-connector-*,octodash,pkg
