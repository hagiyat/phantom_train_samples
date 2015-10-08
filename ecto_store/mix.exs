defmodule SampleTrain.Mixfile do
  use Mix.Project

  def project do
    [app: :sample_train,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: {SampleTrain.App, []},
      applications: [:logger, :phantom_train, :ecto]
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
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:phantom_train, path: "../../phantom_train"},
      {:ecto, "~> 1.0.2"},
      {:mariaex, "~> 0.4.2"},
      {:exrm, "~> 0.18.1"}
    ]
  end
end
