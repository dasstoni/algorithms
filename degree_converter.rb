def c_to_f(degrees)
  fahr = (degrees * 1.8)+32
  return fahr
end

puts "Enter degrees in Celsius:"
cels = gets.chomp.to_f


puts "#{cels} degrees Celsius is equal to #{c_to_f(cels)} degrees Fahrenheit."
