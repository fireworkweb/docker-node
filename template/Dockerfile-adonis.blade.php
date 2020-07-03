FROM {{ $from }}

RUN npm install -g @adonisjs/cli

CMD [ "adonis", "serve" ]
