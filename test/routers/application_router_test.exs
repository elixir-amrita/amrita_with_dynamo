Code.require_file "../../test_helper.exs", __FILE__

defmodule ApplicationRouterTest do
  use Amrita.Sweet
  use AmritaDynamo.TestCase
  use Dynamo.HTTP.Case

  @endpoint ApplicationRouter

  fact "returns OK" do
    conn = get("/")
    conn.status |> 200
  end
end
