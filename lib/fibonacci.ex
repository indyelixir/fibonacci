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
  def series(0), do: []
  def series(1), do: [0]
  def series(2), do: [0, 1]
  def series(length) when length > 2 and is_integer(length) do
    compute([1,0], length - 2)
    |> Enum.reverse
  end
  def series(_), do: {:error, "Length must be a non-negative integer"}

  defp compute(acc, 0), do: acc
  defp compute([n2, n1|_] = acc, remaining) do
    compute([n2 + n1 | acc], remaining - 1)
  end
end
