# Factorial digit sum

product = 1
(1..100).each do |n|
  product *= n
  product /= 10 while product % 10 == 0
end

puts product.to_s.chars.map(&:to_i).reduce(:+)

# 648
