FROM elixir:1.4.5

WORKDIR /app

COPY mix.exs mix.lock ./
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get

COPY . .

EXPOSE 4000

CMD ["mix", "phoenix.server"]
