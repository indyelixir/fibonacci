defmodule SeriesBench do
  use Benchfella

  @length 100_000

  bench "Fibonacci.series(#{@length})" do
    Fibonacci.series(@length)
  end
end
