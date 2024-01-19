type FizzBuzz = (n: number) => string;

const fizzBuzz: FizzBuzz = (n) => {
  if (n % 3 === 0 && n % 5 === 0) return "FizzBuzz";
  else if (n % 3 === 0) return "Fizz";
  else if (n % 5 === 0) return "Buzz";
  else return n + "";
};

[...Array(100).keys()].forEach((i) => console.log(fizzBuzz(i + 1)));
