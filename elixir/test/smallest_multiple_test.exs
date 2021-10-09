defmodule SmallestMultiplesTest do
  use ExUnit.Case

  test "returns 0 for 0" do
    assert SmallestMultiples.get_multiple(0) == 0
  end

  test "returns 1 for 1" do
    assert SmallestMultiples.get_multiple(1) == 1
  end

  test "returns 2 for 2" do
    assert SmallestMultiples.get_multiple(2) == 2
  end

  test "returns 6 for 3" do
    assert SmallestMultiples.get_multiple(3) == 6
  end

  test "returns 36 for 4" do
    assert SmallestMultiples.get_multiple(4) == 12
  end

  test "returns 60 for 5" do
    assert SmallestMultiples.get_multiple(5) == 60
  end

  test "returns an invalid message for non-integer" do
    assert SmallestMultiples.get_multiple("asdf") == "Invalid value"
  end
end
