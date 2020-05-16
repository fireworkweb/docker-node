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

RUN adduser -D -u 1337 fwd && deluser --remove-home node

COPY root-npmrc /root/.npmrc
COPY --chown=fwd:fwd fwd-npmrc /home/fwd/.npmrc
COPY entrypoint /entrypoint

RUN chmod +x /entrypoint \
@if (version_compare($version, '10', '>=') || in_array($version, ['latest', 'qa']))
    && npx pnpm add -g pnpm \
@endif
@if ($qa)
    && npm install -g buddy.js jshint jsinspect \
@endif
    && echo Built

ENTRYPOINT [ "/entrypoint" ]
