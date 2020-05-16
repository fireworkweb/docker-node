FROM node:10-alpine

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

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

RUN npm config set scripts-prepend-node-path true \
    && npm install -g buddy.js jshint jsinspect \
    && echo Built

ENTRYPOINT [ "/entrypoint" ]
