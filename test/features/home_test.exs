# Feature tests goes through the Dynamo.under_test
# and are meant to test the full stack.
defmodule HomeTest do
  use AmritaWithDynamo.TestCase
  use Dynamo.HTTP.Case
  use Amrita.Sweet

  facts "responding to GET /" do
    fact "returns OK" do
      conn = get("/")
      conn.status |> 200
    end
  
    fact "returns body" do
      conn = get("/")
      conn.sent_body |> contains "Welcome to Dynamo"
      conn.sent_body |> contains %r"Welcome to Dynamo"
    end
  end

end
