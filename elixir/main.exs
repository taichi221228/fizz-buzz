defmodule Main do
  def fizz_buzz(n) do
    {n, ""}
    |> add_fizz()
    |> add_buzz()
    |> output()
  end

  defp add_fizz({n, acc}), do: if(rem(n, 3) == 0, do: {n, acc <> "Fizz"}, else: {n, acc})
  defp add_buzz({n, acc}), do: if(rem(n, 5) == 0, do: {n, acc <> "Buzz"}, else: {n, acc})
  defp output({n, ""}), do: n
  defp output({_, acc}), do: acc
end

1..100 |> Enum.each(&IO.puts(Main.fizz_buzz(&1)))
