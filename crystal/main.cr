module FizzBuzz
  def fizzBuzz : String
    case
    when self % 3 == 0 && self % 5 == 0 then "FizzBuzz"
    when self % 3  == 0 then "Fizz"
    when self % 5  == 0 then "Buzz"
    else self.to_s
    end
  end
end

struct Int32
  include FizzBuzz
end

1.upto(100) do |i|
  puts i.fizzBuzz
end
