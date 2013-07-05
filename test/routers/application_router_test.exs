Code.require_file "../../test_helper.exs", __FILE__

defmodule ApplicationRouterTest do
  use AmritaDynamo.TestCase
  use Dynamo.HTTP.Case
  use Amrita.Sweet

  @endpoint ApplicationRouter

  fact "returns OK" do
    conn = get("/")
    conn.status |> 200
  end
end
