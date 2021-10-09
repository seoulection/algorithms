defmodule SumMultiplesTest do
  use ExUnit.Case

  test "returns 0 for 0" do
    assert SumMultiples.get_fizzbuzz_multiples(0) == 0
  end

  test "returns 0 for 1" do
    assert SumMultiples.get_fizzbuzz_multiples(1) == 0
  end

  test "returns 3 for 3" do
    assert SumMultiples.get_fizzbuzz_multiples(3) == 3
  end

  test "returns 8 for 5" do
    assert SumMultiples.get_fizzbuzz_multiples(5) == 8
  end

  test "returns 14 for 6" do
    assert SumMultiples.get_fizzbuzz_multiples(6) == 14
  end

  test "returns 234168 for 1000" do
    assert SumMultiples.get_fizzbuzz_multiples(1000) == 234168
  end

  test "returns invalid value message if value is not an integer" do
    assert SumMultiples.get_fizzbuzz_multiples("hello") == "Please provide an integer"
  end
end
