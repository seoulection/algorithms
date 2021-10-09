defmodule SmallestMultiples do
  def get_multiple(modulo) when modulo <= 0, do: 0

  def get_multiple(modulo) when is_integer(modulo) do
    calculate(modulo, 1)
  end

  def get_multiple(_modulo), do: "Invalid value"

  defp calculate(modulo, number) do
    cond do
      Enum.to_list(1..modulo)
      |> Enum.all?(fn x -> rem(number, x) == 0 end) ->
        number
      true ->
        calculate(modulo, number + 1)
    end
  end
end
