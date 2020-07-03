FROM {{ $from }}

RUN npm install -g buddy.js jshint jsinspect \
    && rm -rf rm -rf /root/.npm/*
