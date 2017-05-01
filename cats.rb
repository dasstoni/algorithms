puts "Do you like cats(y/n):"
answer = gets.chomp

if answer == "yes"
  puts "Ken does too"
elsif answer == "no"
  puts "Dogs are better."
else
  puts "It's hard to decide"
end
