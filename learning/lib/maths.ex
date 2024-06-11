defmodule Maths do
  @moduledoc """
  Maths scratch file.
  """

  import Math

  @doc """
  Add two numbers.
  """
  def sum(a, b), do: a + b

  def divide(a, b), do: a / b

  def multiply(a, b), do: a * b

  def subtract(a, b), do: a - b

  defmodule Factoriall do
    def factoriall(0), do: 1
    def factoriall(n) when n > 0, do: n * factoriall(n - 1)
  end

  def sum_factorialls([]), do: 0
  def sum_factorialls([head | tail]), do: Factoriall.factoriall(head) + sum_factorialls(tail)

  @doc """
  Returns all factors of a number as a list. Unsorted.
  ## Examples

    iex> Maths.get_all_factors(6)
    [1, 6, 2, 3]

  """
  def get_all_factors(n) do
    if n <= 0 do
      []
    else
      upper_range = floor(:math.sqrt(n))
      factors = for x <- 1..upper_range, rem(n, x) == 0, do: [x, div(n, x)]
      List.flatten(factors) |> Enum.dedup()
    end
  end

  # This was very un-elixir like
  # defp get_all_factors(num, accumulating_list, incrementer) do
  #   sqrt = Math.isqrt(num)
  #   if incrementer * incrementer <= num do
  #     if rem(num, incrementer) == 0 do
  #       get_all_factors(num, accumulating_list ++ [incrementer], incrementer + 1)
  #     end

  #     # get_all_factors(num, [incrementer, accumulating_list], incrementer + 1)
  #   end

  #   [accumulating_list]
  # end
end
