FROM node:alpine

WORKDIR /var/www/html

RUN apk add --no-cache shadow

RUN adduser -D -u 1020 developer

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

ENTRYPOINT [ "/entrypoint" ]
