defmodule AmritaWithDynamo.Mixfile do
  use Mix.Project

  def project do
    [ app: :amrita_with_dynamo,
      version: "0.0.1",
      dynamos: [AmritaWithDynamo.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/amrita_with_dynamo/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { AmritaWithDynamo, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" },
      { :amrita, "~>0.2", github: "josephwilk/amrita" } ]
  end
end
