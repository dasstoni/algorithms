
def factorial(n)
  fact = n
  while n > 1
    fact = fact * (n-1)
    n -= 1
  end
  return fact
end


def factorial_rec(n)
  return 1 if n == 0
  n * factorial_rec(n-1)
end

puts factorial_rec(8)
puts factorial(8)
