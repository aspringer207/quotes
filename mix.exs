defmodule Quotes.MixProject do
  use Mix.Project

  def project do
    [
      app: :quotes,
      version: "1.0.10",
      package: package(),
      description: description(),
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.json": :test,
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Parse JSON file: github.com/michalmuskala/jason
      {:jason, "~> 1.1"},

      # Create docs for publishing Hex.docs: github.com/elixir-lang/ex_doc
      {:ex_doc, "~> 0.28", only: :dev, runtime: false},

      # Check test coverage: github.com/parroty/excoveralls
      {:excoveralls, "~> 0.17.0", only: :test},
    ]
  end

  defp description() do
    "a collection of inspiring quotes and methods to return them."
  end

  defp package() do
    [
      files: ["lib/quotes.ex", "mix.exs", "README.md", "quotes.json"],
      name: "quotes",
      licenses: ["GNU GPL v2.0"],
      maintainers: ["dwyl"],
      links: %{"GitHub" => "https://github.com/dwyl/quotes"}
    ]
end
end
