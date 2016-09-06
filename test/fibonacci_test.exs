defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "returns list of specified length" do
    assert Fibonacci.series(0) == []
    assert Fibonacci.series(1) == [0]
    assert Fibonacci.series(8) == [0, 1, 1, 2, 3, 5, 8, 13]
  end
end
