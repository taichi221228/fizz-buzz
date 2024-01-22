def fizzBuzz(n)
  if (n % 3 == 0 && n % 5 == 0)
    return "FizzBuzz"
  elsif (n % 3 == 0)
    return "Fizz"
  elsif (n % 5 == 0)
    return "Buzz"
  else
    return n
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
