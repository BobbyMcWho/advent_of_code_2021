defmodule PuzzlesTest do
  use ExUnit.Case

  alias Puzzles.{
    DayOne
  }

  test "puzzle day one one" do
    input =
      ~w[199 200 208 210 200 207 240 269 260 263]
      |> Inputs.DayOne.input()

    assert DayOne.One.solve(input) == 7
  end

  test "puzzle day one two" do
    input =
      ~w[199 200 208 210 200 207 240 269 260 263]
      |> Inputs.DayOne.input()

    assert DayOne.Two.solve(input) == 5
  end
end
