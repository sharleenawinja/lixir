FROM node:6-slim AS node

FROM elixir:1.4.5

COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

COPY . .
RUN npm install

EXPOSE 4000

CMD ["mix", "phoenix.server"]
