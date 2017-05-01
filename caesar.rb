
def caesar(string, key)
  alphabet = ('a'..'z').to_a
  shift = alphabet.rotate(key)
  letters = string.chars
  cipher = []
  letters.each do |l|
    if alphabet.include?(l)
      position = alphabet.index(l)
      cipher << shift[position]
    else
      cipher << l
    end
  end
  cipher
end

def caesar2(string, key)
  alphabet = ('a'..'z').to_a
  key %= 26
  cipher = []
end


print caesar("zoo", 13).join('')
