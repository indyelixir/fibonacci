defmodule Fibonacci do

  def series(0), do: []
  def series(1), do: [0]
  def series(length) do
    [number_at_position(length) | Enum.reverse(series(length - 1))]
    |> Enum.reverse
  end

  defp number_at_position(1), do: 0
  defp number_at_position(2), do: 1
  defp number_at_position(number) do
    number_at_position(number - 2) + number_at_position(number - 1)
  end
end
