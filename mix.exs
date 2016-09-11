defmodule Fibonacci.Mixfile do
  use Mix.Project

  def project do
    [
      app: :fibonacci,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    An Elixir interface to the Fibonacci series.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Steve Grossi"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/stevegrossi/fibonacci",
        "Docs" => "https://hexdocs.pm/fibonacci/"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.13", only: :dev},
      {:earmark, "~> 1.0.1", only: :dev},
      {:benchfella, "~> 0.3.0", only: :dev}
    ]
  end
end
