FROM gliderlabs/alpine:latest
MAINTAINER swansonerik@gmail.com
ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-'youneeda_keyhere'}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-'youneeda_secretaccesskeyhere'}
ENV DFLT_BUCKET=${DFLT_BUCKET:-'yournew_s3_bucket'}
ENV DATA_VOL=${DATA_VOL:-'/opt/datavol'}
RUN  echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN  apk update && apk add aws-cli && rm -rf /var/cache/apk/*
VOLUME ${DATA_VOL}
COPY entry.sh /entry.sh
ENTRYPOINT /entry.sh
