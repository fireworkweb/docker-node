FROM node:alpine

ENV ASUSER= \
    UID= \
    ENTRYPOINT=entrypoint.sh

WORKDIR /app

RUN adduser -D -u 1337 fwd && deluser --remove-home node \
    && apk add --no-cache \
        bash \
        git \
        shadow \
        su-exec \
        # build tools
        g++ \
        libpng-dev \
        make \
        zlib-dev \
        python \
    && npm install -g pnpm \
    && rm -rf rm -rf /root/.npm/*

COPY root-npmrc /root/.npmrc
COPY --chown=fwd:fwd fwd-npmrc /home/fwd/.npmrc
COPY entrypoint /entrypoint

RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
