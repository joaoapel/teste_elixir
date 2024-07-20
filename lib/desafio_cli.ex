defmodule DesafioCli do
  @moduledoc """
  Ponto de entrada para a CLI.
  """

  @doc """
  A função main recebe os argumentos passados na linha de
  comando como lista de strings e executa a CLI.
  """

  def main(_args) do
   pegar_nomes()
   |> Enum.frequencies()
   |> Enum.map(fn {k, v} -> {k, to_roman(v)} end)
   |> Enum.map(fn ({key, value}) -> IO.puts [key <> " " <> value] end)
  end

  def to_roman(number, roman_accumulator) when number >= 1000 do
    to_roman(number - 1000, roman_accumulator <> "M")
  end

  def to_roman(number, roman_accumulator) when number >= 900 do
    to_roman(number - 900, roman_accumulator <> "CM")
  end

  def to_roman(number, roman_accumulator) when number >= 500 do
    to_roman(number - 500, roman_accumulator <> "D")
  end

  def to_roman(number, roman_accumulator) when number >= 400 do
    to_roman(number - 400, roman_accumulator <> "CD")
  end

  def to_roman(number, roman_accumulator) when number >= 100 do
    to_roman(number - 100, roman_accumulator <> "C")
  end

  def to_roman(number, roman_accumulator) when number >= 90 do
    to_roman(number - 90, roman_accumulator <> "XC")
  end

  def to_roman(number, roman_accumulator) when number >= 50 do
    to_roman(number - 50, roman_accumulator <> "L")
  end

  def to_roman(number, roman_accumulator) when number >= 40 do
    to_roman(number - 40, roman_accumulator <> "XL")
  end

  def to_roman(number, roman_accumulator) when number >= 10 do
    to_roman(number - 10, roman_accumulator <> "X")
  end

  def to_roman(number, roman_accumulator) when number >= 9 do
    to_roman(number - 9, roman_accumulator <> "IX")
  end

  def to_roman(number, roman_accumulator) when number >= 5 do
    to_roman(number - 5, roman_accumulator <> "V")
  end

  def to_roman(number, roman_accumulator) when number == 4 do
    roman_accumulator <> "IV"
  end

  def to_roman(number, roman_accumulator) when number <= 3 do
    roman_accumulator <> String.duplicate("I", number)
  end

  def to_roman(number) do
    to_roman(number, "")
  end

  def pegar_nomes do
    IO.stream(:stdio, :line)
    |> Enum.take_while(&(&1 != "\n"))
    |> Enum.map(&String.replace(&1, "\n", ""))
  end

end
