defmodule Fibonacci do
  @moduledoc """
  Contains functions for working with the Fibonacci series.
  """

  @doc """
  Returns a list of numbers in the Fibonacci series
  of the specified length.

  ## Example

      iex> Fibonacci.series(5)
      [0, 1, 1, 2, 3]
  """
  def series(0), do: []
  def series(1), do: [0]
  def series(length) when length > 1 do
    [number_at_position(length) | Enum.reverse(series(length - 1))]
    |> Enum.reverse
  end
  def series(_), do: {:error, "Length must not be negative"}

  defp number_at_position(1), do: 0
  defp number_at_position(2), do: 1
  defp number_at_position(number) do
    number_at_position(number - 2) + number_at_position(number - 1)
  end
end
