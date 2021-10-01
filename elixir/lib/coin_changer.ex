defmodule CoinChanger do
  @coins %{
    quarters: 0,
    dimes: 0,
    nickels: 0,
    pennies: 0
  }

  @coin_amounts [
    {:quarters, 25},
    {:dimes, 10},
    {:nickels, 5},
    {:pennies, 1}
  ]

  def change(cents) when not is_integer(cents), do: {:error, "Must provide an integer"}

  def change(cents) when cents < 0, do: {:error, "Cannot provide negative cents"}

  def change(cents) do
    calculate(cents, @coins, @coin_amounts)
  end

  defp calculate(cents, coins, [head | tail] = coin_amounts) do
    {key, amount} = head

    if cents >= amount do
      coin_amount = Map.get(coins, key)

      calculate(cents - amount, Map.put(coins, key, coin_amount + 1), coin_amounts)
    else
      calculate(cents, coins, tail)
    end
  end

  defp calculate(cents, coins, _) when cents == 0 do
    coins
  end
end
