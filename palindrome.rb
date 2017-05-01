


def palindrome(string)
  word = string.gsub(/\W+/, '')
  return true if word == word.reverse
  return false
end

word = "racecar"
word2 = "race car"
word3 = "race, car"
word4 = "hello"

puts palindrome(word)
puts palindrome(word2)
puts palindrome(word3)
puts palindrome(word4)
