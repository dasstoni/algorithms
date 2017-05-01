

def reverse(string)
  letters = string.chars
  reversed = []
  letters.length.times do
    reversed << letters.pop
  end
  return reversed
end


def reverse_2(string)
  index = string.length
  word = ''
  while index > 0
    index -= 1
    word += string[index]
  end

  return word
end




puts reverse("hello")
puts reverse_2("hello")
