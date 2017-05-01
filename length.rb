puts"Enter length in inches:"
inches = gets.chomp

inches = inches.to_f
cm = inches * 2.54

puts "#{inches} inches is equal to #{cm}cms."
