

def fiz(num)
  (1..num).each do |n|
    puts "FizzBuzz" if n % 3 == 0 && n % 5 == 0
    puts "Fizz" if n % 3 == 0 && n % 5 != 0
    puts "Buzz" if n % 5 == 0 && n % 3 != 0
    puts n if n % 5 != 0 && n % 3 != 0
  end
end

fiz(100)
