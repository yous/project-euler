sum_square = (1..100).map {|v| v * v }.reduce(:+)
square_sum = (1..100).reduce(:+)
square_sum *= square_sum

puts square_sum - sum_square

# 25164150
