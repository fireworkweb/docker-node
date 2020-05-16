FROM node:8-alpine

WORKDIR /app

RUN apk add --no-cache \
        bash \
        git \
        shadow \
        su-exec \
    # build tools
    && apk --no-cache add \
        g++ \
        libpng-dev \
        make \
        zlib-dev \
        python \
    && rm -fr /var/cache/apk/*

RUN adduser -D -u 1337 fwd && deluser --remove-home node

COPY root-npmrc /root/.npmrc
COPY --chown=fwd:fwd fwd-npmrc /home/fwd/.npmrc
COPY entrypoint /entrypoint

RUN chmod +x /entrypoint \
    && echo Built

ENTRYPOINT [ "/entrypoint" ]
