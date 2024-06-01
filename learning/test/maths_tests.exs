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

  test "factorial" do
    assert Maths.Factorial.factorial(4) == 24
    assert Maths.Factorial.factorial(0) == 1
    assert_raise FunctionClauseError, fn ->
      Maths.Factorial.factorial(-5)
    end
  end

  test "sum_factorial sums a list of factorials" do
    assert Maths.sum_factorials([3, 4]) == 30
    assert Maths.sum_factorials([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 4_037_913
  end
end
