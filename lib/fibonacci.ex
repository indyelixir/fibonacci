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
  def series(length) when is_integer(length) and length >= 0 do
    stream
    |> Enum.take(length)
  end
  def series(_), do: {:error, "`length` must be a non-negative integer"}

  @doc """
  Returns the Fibonacci number in the series at the
  given 1-based `sequence` number
  ## Example

      iex> Fibonacci.number(2)
      1
  """
  def number(sequence) when is_integer(sequence) and sequence > 0 do
    stream
    |> Enum.at(sequence - 1)
  end
  def number(_), do: {:error, "`sequence` must be a positive integer"}

  defp stream, do: stream({0, 1})
  defp stream(seed) do
    Stream.unfold(seed, fn({n1, n2}) -> {n1, {n2, n1+n2}} end)
  end
end
