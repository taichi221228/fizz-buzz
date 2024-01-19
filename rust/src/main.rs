fn main() {
    let mut n = 1;

    loop {
        if n % 3 == 0 && n % 5 == 0 { println!("FizzBuzz") }
        else if n % 5 == 0 { println!("Buzz") }
        else if n % 3 == 0 { println!("Fizz") }
        else { println!("{}", n) }

        if n == 100 { break }

        n += 1;
    }
}
