
def remove_duplicates(array)
  unique = []
  array.each do |i|
    if ! unique.include?(i)
      unique << i
    end
  end
  return unique
end

a = ['a', 'a', 'b', 'b', 'b', 'c', 'd', 'e', 'e', 'f', 'f', 'g']

puts remove_duplicates(a)
