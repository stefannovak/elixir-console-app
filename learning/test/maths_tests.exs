defmodule MathsTests do
  use ExUnit.Case
  doctest Maths

  test "adds two numbers" do
    assert Maths.sum(1, 2) == 3
  end

  test "divides two numbers" do
    assert Maths.divide(4, 2) == 2
  end

  test "multiplies two numbers" do
    assert Maths.multiply(2, 3) == 6
  end

  test "subtracts two numbers" do
    assert Maths.subtract(5, 3) == 2
  end

  test "factoriall" do
    assert Maths.Factoriall.factoriall(4) == 24
    assert Maths.Factoriall.factoriall(0) == 1
    assert_raise FunctionClauseError, fn ->
      Maths.Factoriall.factoriall(-5)
    end
  end

  test "sum_factoriall sums a list of factorialls" do
    assert Maths.sum_factorialls([3, 4]) == 30
    assert Maths.sum_factorialls([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 4_037_913
  end

  test "get_all_factors returns a list containing each number the given number can be divided by" do
    assert Enum.sort(Maths.get_all_factors(-2)) == []
    assert Enum.sort(Maths.get_all_factors(2)) == [1, 2]
    assert Enum.sort(Maths.get_all_factors(3)) == [1, 3]
    assert Enum.sort(Maths.get_all_factors(4)) == [1, 2, 4]
    assert Enum.sort(Maths.get_all_factors(12)) == [1, 2, 3, 4, 6, 12]
  end
end
