defmodule Fizzbuzz do
  def run(0), do: 0

  def run(number) when is_integer(number) do
    cond do
      rem(number, 15) == 0 ->
        "fizzbuzz"
      rem(number, 5) == 0 ->
        "buzz"
      rem(number, 3) == 0 ->
        "fizz"
      true ->
        number
    end
  end

  def run(_number), do: "Invalid input"
end
