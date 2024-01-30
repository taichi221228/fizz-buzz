fn fizz_buzz(n: i32) -> String {
    match (n % 3, n % 5) {
        (0, 0) => "FizzBuzz".to_string(),
        (0, _) => "Fizz".to_string(),
        (_, 0) => "Buzz".to_string(),
        _ => n.to_string()
    }
}

fn main() {
    (1..=100).for_each(|i| println!("{}", fizz_buzz(i)));
}
