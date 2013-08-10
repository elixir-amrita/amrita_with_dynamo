defmodule ApplicationRouterTest do
  use AmritaWithDynamo.TestCase
  use Dynamo.HTTP.Case
  use Amrita.Sweet

  # Sometimes it may be convenient to test a specific
  # aspect of a router in isolation. For such, we just
  # need to set the @endpoint to the router under test.
  @endpoint ApplicationRouter

  fact "returns OK" do
    conn = get("/")
    conn.status |> 200
  end
end
