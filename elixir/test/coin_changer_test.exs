defmodule CoinChangerTest do
  use ExUnit.Case

  test "returns 0 quarters, 0 dimes, 0 nickels, 0 pennies for 0 cents" do
    assert CoinChanger.change(0) == %{quarters: 0, dimes: 0, nickels: 0, pennies: 0}
  end

  test "returns 1 penny for 1 cent" do
    assert CoinChanger.change(1) == %{quarters: 0, dimes: 0, nickels: 0, pennies: 1}
  end

  test "returns 2 pennies for 2 cents" do
    assert CoinChanger.change(2) == %{quarters: 0, dimes: 0, nickels: 0, pennies: 2}
  end

  test "returns 1 nickel for 5 cents" do
    assert CoinChanger.change(5) == %{quarters: 0, dimes: 0, nickels: 1, pennies: 0}
  end

  test "returns 1 nickel, 1 penny for 6 cents" do
    assert CoinChanger.change(6) == %{quarters: 0, dimes: 0, nickels: 1, pennies: 1}
  end

  test "returns 1 dime for 10 cents" do
    assert CoinChanger.change(10) == %{quarters: 0, dimes: 1, nickels: 0, pennies: 0}
  end

  test "returns 1 dime, 1 nickel, 1 penny for 16 cents" do
    assert CoinChanger.change(16) == %{quarters: 0, dimes: 1, nickels: 1, pennies: 1}
  end

  test "returns 1 quarter for 25 cents" do
    assert CoinChanger.change(25) == %{quarters: 1, dimes: 0, nickels: 0, pennies: 0}
  end

  test "returns 1 quarter, 1 dime, 1 nickel, 1 penny for 41 cents" do
    assert CoinChanger.change(41) == %{quarters: 1, dimes: 1, nickels: 1, pennies: 1}
  end

  test "returns an error message if given negative cents" do
    assert CoinChanger.change(-10) == {:error, "Cannot provide negative cents"}
  end

  test "returns an error message if given non-number" do
    assert CoinChanger.change("asdf") == {:error, "Must provide an integer"}
  end
end
