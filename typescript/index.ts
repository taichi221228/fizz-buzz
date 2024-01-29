type FizzBuzz = (n: number) => "FizzBuzz" | "Fizz" | "Buzz" | string;

const fizzBuzz: FizzBuzz = (n) =>
  n % 3 === 0 && n % 5 === 0
    ? "FizzBuzz"
    : n % 3 === 0
    ? "Fizz"
    : n % 5 === 0
    ? "Buzz"
    : String(n);

Array.from({ length: 100 }, (_, i) => ++i).forEach((n) =>
  console.log(fizzBuzz(n))
);
