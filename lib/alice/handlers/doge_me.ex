defmodule Alice.Handlers.Dogeme do
  @moduledoc """
  Alice doge me such doge, very wow.
  """
  use Alice.Router
  alias Alice.Conn

  command ~r/doge me (.+)/i, :get_doge
  route   ~r/doge me (.+)/i, :get_doge

  @doc "`doge me phrase, second phrase` - gets a doge image with the words `phrase`, `second phrase`"
  def get_doge(conn) do
    conn
    |> generate_phrases()
    |> add_random_extra_doge()
    |> create_doge_url()
    |> reply(conn)
  end

  defp generate_phrases(conn) do
    conn
    |> Conn.last_capture()
    |> String.split(",")
  end

  defp create_doge_url(phrases) do
    url_phrases =
      phrases
      |> encode_phrases()
      |> Enum.join("/")
    "http://dogr.io/#{url_phrases}.png?split=false"
  end

  defp encode_phrases(phrases) do
    Enum.map(phrases, fn(phrase) ->
      phrase
      |> String.strip()
      |> URI.encode()
    end)
  end


  defp add_random_extra_doge(phrases) do
    phrases ++ Enum.map(0..1, fn(_) -> "#{Enum.random(~w[very such so])} #{Enum.random(~w[doge wow])}" end)
  end
end
