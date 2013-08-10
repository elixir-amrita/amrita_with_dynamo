Dynamo.under_test(AmritaWithDynamo.Dynamo)
Dynamo.Loader.enable
Amrita.start

defmodule AmritaWithDynamo.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
