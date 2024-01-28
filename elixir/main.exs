defmodule Main do
  def fizz_buzz(i) do
    cond do rem(i, 3) == 0 && rem(i, 5) == 0 -> "FizzBuzz"
      rem(i, 3) == 0 -> "Fizz"
      rem(i, 5) == 0 -> "Buzz"
      true -> i
    end
  end
end

for i <- 1..100, do: IO.puts Main.fizz_buzz(i)
