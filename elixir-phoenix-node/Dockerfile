FROM trenpixster/elixir:1.3.4

ENV NODE_VERSION "6.x"

RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION | sudo -E bash - && apt-get install -y nodejs

ENV PHOENIX_VERSION "1.2.0"

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez

CMD ["iex"]
