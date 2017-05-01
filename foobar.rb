def foobar(dig)
  dig.times do |num|
    if num % 3 == 0 && num % 5 == 0 && num != 0
      puts "Foobar"
    elsif num % 5 == 0 && num != 0
      puts "Bar"
    elsif num % 3 == 0 && num != 0
      puts "Foo"
    else
      puts num
    end
  end
end


puts "How many digits of the pattern would you like to see?"
digits = gets.chomp
digits = digits.to_i
foobar(digits +1)

=begin
digits.times do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "Foobar"
  elsif num % 5 == 0
    puts "Bar"
  elsif num % 3 == 0
    puts "Foo"
  else
    puts num
  end
end
=end
