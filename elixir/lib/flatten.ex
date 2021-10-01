defmodule Flatten do
  def flatten(list) do
    list
    |> execute([])
  end

  defp execute([head | tail], list) when is_list(head) do
    execute(head, list) ++ execute(tail, [])
  end

  defp execute([head | tail], list) do
    tail
    |> execute(list ++ [head])
  end

  defp execute([], list), do: list
end
