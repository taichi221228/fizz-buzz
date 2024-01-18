fn main() {
    let mut count = 0;

    loop {
        count +=  1;

        if count % 3 == 0 && count % 5 == 0 { println!("FizzBuzz") }
        else if count % 5 == 0 { println!("Buzz") }
        else if count % 3 == 0 { println!("Fizz") }
        else { println!("{}", count) }

        if count == 100 { break }
    }
}
