defmodule FizzbuzzTest do
  use ExUnit.Case

  # if a number is divisible by 3, then return "fizz"
  # if a number is divisible by 5, then return "buzz"
  # if a number is divisible by 3 and 5, then return "fizzbuzz"
  # else, then return the number

  test "returns 0 for 0" do
    assert Fizzbuzz.run(0) == 0
  end

  test "returns 1 for 1" do
    assert Fizzbuzz.run(1) == 1
  end

  test "returns 'fizz' for 3" do
    assert Fizzbuzz.run(3) == "fizz"
  end

  test "returns 4 for 4" do
    assert Fizzbuzz.run(4) == 4
  end

  test "returns 'buzz' for 5" do
    assert Fizzbuzz.run(5) == "buzz"
  end

  test "returns 'buzz' for 10" do
    assert Fizzbuzz.run(10) == "buzz"
  end

  test "returns 'fizzbuzz' for 15" do
    assert Fizzbuzz.run(15) == "fizzbuzz"
  end

  test "returns 'fizzbuzz' for 30" do
    assert Fizzbuzz.run(30) == "fizzbuzz"
  end

  test "returns an invalid message if you provide a non-number" do
    assert Fizzbuzz.run("asdf") == "Invalid input"
  end

  test "returns an invalid message if you provide a list" do
    list = [1, 2, 3]

    assert Fizzbuzz.run(list) == "Invalid input"
  end
end
