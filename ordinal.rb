puts "Enter a number:"
number = gets.chomp.to_i

right_digit = number % 10

def ordinal(n)
  if n == 1
    return "st"
  elsif n == 2
    return "nd"
  elsif n == 3
    return "rd"
  else
    return "th"
  end
end

if number == 11 || 12 || 13
  puts "#{number}th"
else
  puts number.to_s + ordinal(right_digit)
end
