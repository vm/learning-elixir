defmodule WeatherHistory do
  def test_data do
    [
     [1366225622, 26, 15, 0.125],
     [1366232822, 26, 22, 0.095],
     [1366232822, 27, 21, 0.05],
     [1366232822, 28, 24, 0.03],
     [1366236422, 26, 17, 0.025]
    ]
  end
  def for_location([], target_loc), do: []
  def for_location([head = [_, target_loc, _, _ ] | tail], target_loc) do
    [head | for_location(tail, target_loc)]
  end
  def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)
end
