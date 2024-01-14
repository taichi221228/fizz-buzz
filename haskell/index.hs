loop 101 = return ()
loop n = do
  if n `mod` 3 == 0 && n `mod` 5 == 0
    then putStrLn "FizzBuzz"
  else if n `mod` 3 == 0
    then putStrLn "Fizz"
  else if n `mod` 5 == 0
    then putStrLn "Buzz"
  else
    print n
  loop (n + 1)

main = loop 1
