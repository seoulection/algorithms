defmodule FlattenTest do
  use ExUnit.Case

  test "returns [0] when given [0]" do
    assert Flatten.flatten([0]) == [0]
  end

  test "returns [0, 1] for [0, [1]]" do
    assert Flatten.flatten([0, [1]]) == [0, 1]
  end

  test "returns [0, 1, 2] for [0, [1, 2]]" do
    assert Flatten.flatten([0, [1, 2]]) == [0, 1, 2]
  end

  test "returns [0, 1, 2, 3] for [0, [1], [2, [3]]]" do
    assert Flatten.flatten([0, [1], [2, [3]]]) == [0, 1, 2, 3]
  end

  test "returns [0, 1, 2, 3, 4] for [[0], 1, [2, [3, 4]]]" do
    assert Flatten.flatten([[0], 1, [2, [3, 4]]]) == [0, 1, 2, 3, 4]
  end
end
