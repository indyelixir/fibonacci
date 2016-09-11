defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  describe "Fibonacci.series" do
    test "returns list of specified length" do
      assert Fibonacci.series(0) == []
      assert Fibonacci.series(1) == [0]
      assert Fibonacci.series(8) == [0, 1, 1, 2, 3, 5, 8, 13]
    end

    test "requires non-negative length" do
      assert Fibonacci.series(-1) == {:error, "`length` must be a non-negative integer"}
    end

    test "requires integers" do
      assert Fibonacci.series(1.5) == {:error, "`length` must be a non-negative integer"}
    end
  end

  describe "Fibonacci.number" do
    test "returns the fibonacci number for the passed in 1-sequence sequence number" do
      assert Fibonacci.number(1) == 0
      assert Fibonacci.number(2) == 1
      assert Fibonacci.number(3) == 1
      assert Fibonacci.number(10) == 34
    end

    test "requires non-negative sequence" do
      assert Fibonacci.number(0) == {:error, "`sequence` must be a positive integer"}
      assert Fibonacci.number(-1) == {:error, "`sequence` must be a positive integer"}
    end

    test "requires integers" do
      assert Fibonacci.number(1.5) == {:error, "`sequence` must be a positive integer"}
    end
  end
end
