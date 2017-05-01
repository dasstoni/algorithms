

# def collatz(n)
#   sequence = []
#   if n % 2 == 0
#     next_num = n/2
#     sequence << next_num
#     if sequence.last != 1
#       sequence << collatz(next_num)
#     end
#   else
#     next_num = n * 3 + 1
#     sequence << next_num
#     if sequence.last != 1
#       sequence << collatz(next_num)
#     end
#   end
#
#   sequence.join(',')
# end
#
#
# print collatz(7)

def collatz_longest
  num = 1 #sets the number of the sequence
  longest = 1 #creates variable to account for the longest sequence
  longest_num = 1 #creates variable to account for the number with the longest sequence
  while num < 1000000 #loops through each number 1-1million
    next_num = num #creates the next_num to keep the loop going
    sequence = 1 #starts the sequence with one
    while next_num != 1
      if next_num % 2 == 0
        next_num = next_num/2
      else
        next_num = next_num * 3 + 1
      end
      sequence += 1 #adds one to the sequence anytime there is a next number to account for the length
    end
    if sequence > longest #checks to see if the current sequence is longer than what is set at longest
      longest = sequence #sets longest equal to the longest sequence
      longest_num = num #sets the number that produces the longest sequence to the longest number
    end
    num += 1
  end
  longest_num
end

puts collatz_longest
