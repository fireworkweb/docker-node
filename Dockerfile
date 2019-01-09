FROM node:alpine

WORKDIR /var/www/html

RUN apk add --no-cache shadow su-exec bash git openssh-client

RUN adduser -D -u 1020 developer

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
