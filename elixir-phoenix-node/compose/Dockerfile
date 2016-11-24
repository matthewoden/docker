# Dockerfile for composing a phoenix application

FROM matthewoden/elixir-phoenix-node

RUN \
  apt-get update && \
  apt-get install -y postgresql-client && \
  apt-get clean && \
  cd /var/lib/apt/lists && rm -fr *Release* *Sources* *Packages* && \
  truncate -s 0 /var/log/*log

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY mix.exs /usr/src/app/
COPY mix.lock /usr/src/app/
COPY package.json /usr/src/app/

RUN \
  mix local.hex --force && \
  mix deps.get && \
  npm install --quiet

COPY . /usr/src/app/

CMD ["mix", "phoenix.server"]
