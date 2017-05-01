

# def largest_prime(n)
#   largest = 0
#   while n > 0
#     if n % 2 != 0 && n % 3 != 0 && n % 5 != 0 || n == 5 || n == 3 || n == 2
#       if n > largest
#         largest = n
#       end
#     end
#     n -= 1
#   end
#   return largest
# end
#
# def prime_numbers(n)
#   prime = []
#   (1..n).each do |num|
#     if num % 2 != 0 && num % 3 != 0 && num % 5 != 0 || num == 5 || num == 3 || num == 2
#       prime << num
#     end
#   end
#   return prime
# end
def largest_fact(n)
  largest = 0
  (1..n).each do |f|
    if n % f == 0 && f != n && is_prime?(f)
      if f > largest
        largest = f
      end
    end
  end
  largest
end

def is_prime?(num)
  if num % 2 != 0 && num % 3 != 0 && num % 5 != 0 || num == 5 || num == 3 || num == 2
    true
  end
end

def is_factor?(n)
  if n % f == 0 && f != n
    true
  end
end

def largest_factor(n)
  largest = 0
  (1..n).each do |l|
    if is_prime?(l) && is_factor?(l)
      if l > largest
        largest = l
      end
    end
  end
  largest
end

puts largest_fact(1347)
# puts largest_factor(25)
# puts prime_numbers(25)
# puts largest_prime(25)
