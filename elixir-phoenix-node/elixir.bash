export ELIXIR_PHOENIX_TAG=1.0.1

alias elixir='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" matthewoden/elixir-phoenix-node:ELIXIR_PHOENIX_TAG elixir'

alias iex='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" matthewoden/elixir-phoenix-node:ELIXIR_PHOENIX_TAG'

alias mix='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD" mattheoden/elixir-phoenix-node:ELIXIR_PHOENIX_TAG mix'
