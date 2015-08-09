defmodule Chop do
  defp avg(nums), do: div(Enum.sum(nums), 2)
  def guess(actual, range, current \\ 500)
  def guess(actual, _range, current) when actual == current do
    IO.puts "#{actual}"
  end
  def guess(actual, low.._high, current) when current > actual do
    IO.puts "It is #{current}"
    guess(actual, low..current, avg([low, current]))
  end
  def guess(actual, _low..high, current) do
    IO.puts "It is #{current}"
    guess(actual, current..high, avg([high, current]))
  end
end
