defmodule Maths do
  @moduledoc """
  Maths scratch file.
  """

  @doc """
  Add two numbers.
  """
  def sum(a, b), do: a + b

  def divide(a, b), do: a / b

  def multiply(a, b), do: a * b

  def subtract(a, b), do: a - b

  defmodule Factorial do
    def factorial(0), do: 1
    def factorial(n) when n > 0, do: n * factorial(n - 1)
  end

  def sum_factorials([]), do: 0
  def sum_factorials([head | tail]), do: Factorial.factorial(head) + sum_factorials(tail)
end
