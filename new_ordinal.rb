
def ordinal(n)
  right_digit = n % 10
  if n >= 10 && n <= 19
    return "#{n}th"
  elsif right_digit == 1
    return "#{n}st"
  elsif right_digit == 2
    return "#{n}nd"
  elsif right_digit == 3
    return "#{n}rd"
  else
    return "#{n}th"
  end
end

puts "Enter a number"
number = gets.chomp.to_i
puts ordinal(number)
