# Aprendizado


- O iex é iex.bat no Windows ATENÇÃO
- CTRL + C para sair do IEx
- https://www.youtube.com/watch?v=A_43Iy9nCCo
- mix new todos : para criar novo projeto
- Roda o projeto, aí voce tem acesso as funções: iex.bat -S mix 
- Depois de rodar o comando acima: colocar Iex:DesafioCli.main("oi")
- Digitar 'recompile' ao atualizar o código para atualizar os símbolos no IEx
- clear no IEx funciona
- https://hexdocs.pm/elixir/1.17.0/IO.html
- _variavel para variáveis não utilizadas
- Destruturação é igual unpacking no Javascript {a, b} = {coisa, coisa1}
- Módulo Enum -> frequencies
-  ```elixir
    for i <- [1,2,3], do: i*i

    for i <- 1..55, do: i*i

    import Integer

    for i <- 1..30, Integer.is_even(i), do: i*i

    for x <- [1,2,3], y <- [2,3,4], do: x * y ```

  - https://stackoverflow.com/questions/56210712/how-to-cleanly-take-multiline-input-from-the-terminal-using-elixir

  - Como rodar o binário no Windows: escript .\desafio_cli
