func fizzBuzz(n: int): string =
  result = ""
  if n %% 3 == 0:
    result.add("Fizz")
  if n %% 5 == 0:
    result.add("Buzz")
  if result == "":
    result.add($n)

for i in 1..100:
  echo fizzBuzz(i)
