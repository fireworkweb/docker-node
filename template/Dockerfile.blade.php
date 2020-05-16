FROM {{ $from }}

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

RUN adduser -D -u 1337 developer && deluser --remove-home node

COPY entrypoint /entrypoint
RUN chmod +x /entrypoint

RUN npm config set scripts-prepend-node-path true \
@if (version_compare($version, '10', '>='))
    && npx pnpm add -g pnpm \
@endif
@if ($qa)
    && npm install -g buddy.js jshint jsinspect \
@endif
    && echo Built

ENTRYPOINT [ "/entrypoint" ]
