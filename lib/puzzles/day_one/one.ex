defmodule Puzzles.DayOne.One do
  # The first order of business is to figure out how quickly the depth increases, just so you know what you're dealing with - you never know if the keys will get carried into deeper water by an ocean current or a fish or something.

  # To do this, count the number of times a depth measurement increases from the previous measurement. (There is no measurement before the first measurement.) In the example above, the changes are as follows:

  # 199 (N/A - no previous measurement)
  # 200 (increased)
  # 208 (increased)
  # 210 (increased)
  # 200 (decreased)
  # 207 (increased)
  # 240 (increased)
  # 269 (increased)
  # 260 (decreased)
  # 263 (increased)
  # In this example, there are 7 measurements that are larger than the previous measurement.

  # How many measurements are larger than the previous measurement?

  @spec solve(list(integer)) :: integer
  def solve([head | tail] = _input) do
    {_, total_increased} = Enum.reduce(tail, {head, 0}, &compare/2)
    total_increased
  end

  defp compare(n, {last_value, total_increased}) when n > last_value do
    {n, total_increased + 1}
  end

  defp compare(n, {_last_value, total_increased}), do: {n, total_increased}
end
