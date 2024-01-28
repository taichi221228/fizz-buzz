const fizzBuzz = (n) =>
  (n % 3 === 0 && n % 5 === 0)
    ? "FizzBuzz"
    : (n % 3 === 0)
    ? "Fizz"
    : (n % 5 === 0)
    ? "Buzz"
    : `${n}`;

[...Array(100).keys()].forEach((i) => console.log(fizzBuzz(i + 1)));
