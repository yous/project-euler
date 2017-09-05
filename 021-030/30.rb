# Digit fifth powers

numbers = []
(2...1_000_000).each do |number|
  digit_sum = number.to_s.chars.reduce(0) do |sum, e|
    sum + e.to_i**5
  end
  numbers << number if digit_sum == number
end

puts numbers.reduce(:+)

# 443839
