def fizzBuzz(n : Int32) : Int32 | String
  if (n % 3 == 0 && n % 5 == 0)
    "FizzBuzz"
  elsif (n % 3 == 0)
    "Fizz"
  elsif (n % 5 == 0)
    "Buzz"
  else
    n
  end
end

module Crystal
  n = 1
  while true
    puts fizzBuzz(n)

    break if (n == 100)
    n += 1
  end
end
