defmodule DesafioCli do
  @moduledoc """
  Ponto de entrada para a CLI.
  """

  @doc """
  A função main recebe os argumentos passados na linha de
  comando como lista de strings e executa a CLI.
  """

  def main(_args) do
   input_names()
   |> process_names()
   |> IO.puts()
  end

  def process_names(names_list) do
    names_list
    |> Enum.frequencies()
    |> Enum.map(fn {k, v} -> {k, numeral(v)} end)
    |> Enum.map(fn {k, v} -> [k <> " " <> v <> "\n"] end)
  end

  def input_names() do
    IO.stream(:stdio, :line)
    |> Enum.take_while(&(&1 != "\n"))
    |> Enum.map(&String.replace(&1, "\n", ""))
  end

  @spec numeral(pos_integer) :: String.t()
  def numeral(n) when n >= 1000, do: "M" <> numeral(n - 1000)
  def numeral(n) when n >= 900, do: "CM" <> numeral(n - 900)
  def numeral(n) when n >= 500, do: "D" <> numeral(n - 500)
  def numeral(n) when n >= 400, do: "CD" <> numeral(n - 400)
  def numeral(n) when n >= 100, do: "C" <> numeral(n - 100)
  def numeral(n) when n >= 90, do: "XC" <> numeral(n - 90)
  def numeral(n) when n >= 50, do: "L" <> numeral(n - 50)
  def numeral(n) when n >= 40, do: "XL" <> numeral(n - 40)
  def numeral(n) when n >= 10, do: "X" <> numeral(n - 10)
  def numeral(n) when n >= 9, do: "IX" <> numeral(n - 9)
  def numeral(n) when n >= 5, do: "V" <> numeral(n - 5)
  def numeral(n) when n >= 4, do: "IV" <> numeral(n - 4)
  def numeral(n) when n >= 1, do: "I" <> numeral(n - 1)
  def numeral(0), do: ""

end
