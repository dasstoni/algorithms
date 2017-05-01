

def foobar(digit)
  n = 0
  while n < digit
    n = n + 1
    if n % 3 == 0 && n % 5 == 0
      puts "Foobar"
    elsif n % 3 == 0
      puts "Foo"
    elsif n % 5 == 0
      puts "Bar"
    else
      puts n
    end
  end
end

puts "How many digits of the pattern would you like to see?"
num = gets.chomp
num = num.to_i
foobar(num)
