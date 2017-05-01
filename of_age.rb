puts "How old are you?"
age = gets.chomp
age = age.to_f

def of_age(n)
  if n >= 21
    puts "You are legally allowed to purchase alcohol."
  else
    puts "You are not legally allowed to purchase alcolhol"
  end
end

of_age(age)
