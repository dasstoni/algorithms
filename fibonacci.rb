
def recursive_fib(digits)
  if digits <= 1
    return digits
  else
    value = recursive_fib(digits-1) + recursive_fib(digits-2)
    return value
  end
end

def iterative_fib(digits)
  digits = digits - 2
  fib = [0,1]
  index = 0
  until digits == 0
    digits = digits - 1
    new_digit = fib[index] + fib[index +1]
    fib << new_digit
    index += 1
  end
  fib
end
# #
# (0..10).each do |n|
#   puts recursive_fib(n)
# end

# print "Iterative: #{iterative_fib(10)}\n"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end
