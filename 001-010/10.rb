# Summation of primes

require 'prime'

puts Prime.each(2000000).reduce(:+)

# 142913828922
