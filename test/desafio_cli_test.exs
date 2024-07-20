defmodule DesafioCliTest do
  use ExUnit.Case
  doctest DesafioCli

  test "Numerals" do
    assert DesafioCli.numeral(4) == "IV"
    assert DesafioCli.numeral(14) == "XIV"
    assert DesafioCli.numeral(16) == "XVI"
  end

  test "Process" do
   assert DesafioCli.process_names(["joao", "joao", "apel"]) == [["apel I"], ["joao II"]]
  end
end
