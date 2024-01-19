fn fizz_buzz(n: i32) -> String {
    if n % 3 == 0 && n % 5 == 0 { "FizzBuzz".to_string() }
    else if n % 5 == 0 { "Buzz".to_string() }
    else if n % 3 == 0 { "Fizz".to_string() }
    else { n.to_string() }
}

fn main() {
    let mut i = 1;
    loop {
        println!("{}", fizz_buzz(i));
        if i == 100 { break }
        i += 1;
    }
}
