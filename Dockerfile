FROM node:alpine

WORKDIR /app

RUN apk add --no-cache \
        bash \
        git \
        openssh-client \
        shadow \
        su-exec \
    # build tools
    && apk --no-cache add \
        g++ \
        libpng-dev \
        make \
        zlib-dev \
    &&  rm -fr /var/cache/apk/*

RUN adduser -D -u 1313 developer && usermod -u 1515 node

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
