defmodule RomanNumerals do
  @arabic_roman_numerals [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  def convert(arabic) when arabic >= 1 do
    execute(arabic, "", @arabic_roman_numerals)
  end

  def convert(arabic) when arabic < 1 do
    ""
  end

  defp execute(arabic, roman_str, [head | tail] = mapping) do
    {arabic_num, roman} = head
    if arabic >= arabic_num do
      execute(arabic - arabic_num, roman_str <> roman, mapping)
    else
      execute(arabic, roman_str, tail)
    end
  end

  defp execute(_, roman_str, []) do
    roman_str
  end
end
