# AliceDogeme [![Hex Version](https://img.shields.io/hexpm/v/alice_doge_me.svg)](https://hex.pm/packages/alice_doge_me) [![Deps Status](https://beta.hexfaktor.org/badge/all/github/alice-bot/alice_doge_me.svg)](https://beta.hexfaktor.org/github/alice-bot/alice_doge_me) [![Hex Downloads](https://img.shields.io/hexpm/dt/alice_doge_me.svg)](https://hex.pm/packages/alice_doge_me) [![License: MIT](https://img.shields.io/hexpm/l/alice_doge_me.svg)](https://hex.pm/packages/alice_doge_me)

This handler will allow Alice to create Doge images with user input. It uses the http://dogr.io/ API.

## Installation

If [available in Hex](https://hex.pm/packages/alice_doge_me), the package can be installed as:

  1. Add `alice_doge_me` to your list of dependencies in `mix.exs`:

    ```elixir
    defp deps do
       [
         {:websocket_client, github: "jeremyong/websocket_client"},
         {:alice, "~> 0.3"},
         {:alice_doge_me, "~> 0.1"}
       ]
    end
    ```

  2. Add the handler to your list of registered handlers in `mix.exs`:

    ```elixir
    def application do
      [applications: [:alice],
        mod: {
          Alice, [Alice.Handlers.Dogeme, ...]}]
    end
    ```

## Usage

Use `@alice help` for more information.