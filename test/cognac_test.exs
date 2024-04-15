defmodule CognacTest do
  use ExUnit.Case

  test "test" do
    fields = [:fooo, bar: [:baz]]
    arguments = %{"foo" => "bar"}

    Cognac.query([stuff: {arguments, fields}], output: :binary, pretty: true)
  end

  test "query without arguments has no parentheses" do
    fields = [:fooo, bar: [:baz]]
    arguments = %{}
    expected = "query{stuff{fooo bar{baz}}}"

    assert expected == Cognac.query([stuff: {arguments, fields}], output: :binary, pretty: false)
  end
end
