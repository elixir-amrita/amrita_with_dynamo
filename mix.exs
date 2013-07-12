defmodule AmritaDynamo.Mixfile do
  use Mix.Project

  def project do
    [ app: :amrita_dynamo,
      version: "0.0.1",
      dynamos: [AmritaDynamo.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/amrita_dynamo/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { AmritaDynamo, [] } ]
  end

  defp deps do
    [ { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, %r(.*) github: "elixir-lang/dynamo" },
      { :amrita, %r(.*), github: "josephwilk/amrita" } ]
  end
end
