

def unique(numbers)
  non_dup =[]
  numbers.each do |n|
    if non_dup.include?(n) == false
      non_dup << n
    end
  end

  return non_dup
end

numbers = [1, 5, 2, 0, 2, -3, 1, 10]
puts unique(numbers)
