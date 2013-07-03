Dynamo.under_test(AmritaDynamo.Dynamo)
Dynamo.Loader.enable
Amrita.start

defmodule AmritaDynamo.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
