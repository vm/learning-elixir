defmodule MyList do
  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]
  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
  def sum(list), do: reduce(list, 0, &(&1 + &2))
  def mapsum(list, func), do: map(list, func) |> sum
  def max([head | tail]) do
    reduce([head | tail], head, fn
      (current, new) when current > new -> current
      (_current, new) -> new
    end)
  end
  def caesar(chars, n), do: map(chars, &(&1 + n))
  def swap([a, b | rest]), do: [b, a | swap(rest)]
  def swap(_), do: raise "Can't swap list with odd number of elements"
  def span(from, to) when from == to, do: [from]
  def span(from, to) when from > to, do: raise "From can't be greater than to"
  def span(from, to), do: [from | span(from + 1, to)]
end
