defmodule RomanNumeralsTest do
  use ExUnit.Case

  test "returns '' if number is less than 1" do
    assert RomanNumerals.convert(0) == ""
  end

  test "returns 'I' for 1" do
    assert RomanNumerals.convert(1) == "I"
  end

  test "returns 'II' for 2" do
    assert RomanNumerals.convert(2) == "II"
  end

  test "returns 'IV' for 4" do
    assert RomanNumerals.convert(4) == "IV"
  end

  test "returns 'V' for 5" do
    assert RomanNumerals.convert(5) == "V"
  end

  test "returns 'IX' for 9" do
    assert RomanNumerals.convert(9) == "IX"
  end

  test "returns 'X' for 10" do
    assert RomanNumerals.convert(10) == "X"
  end

  test "returns 'XIII' for 13" do
    assert RomanNumerals.convert(13) == "XIII"
  end

  test "returns 'XL' for 40" do
    assert RomanNumerals.convert(40) == "XL"
  end

  test "returns 'L' for 50" do
    assert RomanNumerals.convert(50) == "L"
  end

  test "returns 'XC' for 90" do
    assert RomanNumerals.convert(90) == "XC"
  end

  test "returns 'C' for 100" do
    assert RomanNumerals.convert(100) == "C"
  end

  test "returns 'CD' for 400" do
    assert RomanNumerals.convert(400) == "CD"
  end

  test "returns 'D' for 500" do
    assert RomanNumerals.convert(500) == "D"
  end

  test "returns 'CM' for 900" do
    assert RomanNumerals.convert(900) == "CM"
  end

  test "returns 'M' for 1000" do
    assert RomanNumerals.convert(1000) == "M"
  end

  test "returns 'MMXXI' for 2021" do
    assert RomanNumerals.convert(2021) == "MMXXI"
  end
end
