defmodule Fibonacci do
  @moduledoc """
  Contains functions for working with the Fibonacci series.
  """

  @doc """
  Returns a list of numbers in the Fibonacci series
  of the specified `length`.

  ## Example

      iex> Fibonacci.series(5)
      [0, 1, 1, 2, 3]
  """
  def series(length) when length >= 0 and is_integer(length) do
    seed = {0, 1}
    Stream.unfold(seed, fn({n1, n2}) -> {n1, {n2, n1+n2}} end)
    |> Enum.take(length)
  end
  def series(_), do: {:error, "Length must be a non-negative integer"}
end
