defmodule AliceDogeMe.Mixfile do
  use Mix.Project

  def project do
    [app: :alice_doge_me,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:alice, "~> 0.3"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    This handler will allow Alice to create Doge images with user input.
    """
  end

  defp package do
    [files: ["lib", "config", "mix.exs", "README*"],
     maintainers: ["Tyler Clemens"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/alice-bot/alice_doge_me/",
              "Docs"   => "https://github.com/alice-bot/alice_doge_me/"}]
  end
end
