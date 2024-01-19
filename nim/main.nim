proc fizzBuzz(n: int): string =
  if n %% 3 == 0 and n %% 5 == 0:
    return "FizzBuzz"
  elif n %% 3 == 0:
    return "Fizz"
  elif n %% 5 == 0:
    return "Buzz"
  else:
    return $n

for i in 1..100:
  echo fizzBuzz(i)
