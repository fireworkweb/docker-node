FROM node:alpine

WORKDIR /var/www/html

RUN apk add --no-cache \
        bash \
        git \
        openssh-client \
        shadow \
        su-exec \
    && apk --no-cache add \
        bash \
        g++ \
        libpng-dev \
        make \
        zlib-dev \
    &&  rm -fr /var/cache/apk/*

RUN adduser -D -u 1020 developer

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
