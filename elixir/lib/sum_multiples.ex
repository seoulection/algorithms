defmodule SumMultiples do
  defguard is_fizzbuzz_multiple(number) when rem(number, 3) == 0 or rem(number, 5) == 0

  def get_fizzbuzz_multiples(number) when is_integer(number) do
    list = Enum.to_list(1..number)

    Enum.reduce(list, 0, fn
      num, acc when is_fizzbuzz_multiple(num) -> num + acc
      _, acc -> acc
    end)
  end

  def get_fizzbuzz_multiples(_number), do: "Please provide an integer"
end
