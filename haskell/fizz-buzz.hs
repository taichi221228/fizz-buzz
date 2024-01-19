fizzBuzz :: Int -> String
fizzBuzz i
  | i `mod` 15 == 0 = "FizzBuzz"
  | i `mod` 3 == 0 = "Fizz"
  | i `mod` 5 == 0 = "Buzz"
  | otherwise = show i

main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [1..100]