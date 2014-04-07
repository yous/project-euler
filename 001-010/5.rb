result = (1..20).reduce do |mult, v|
  mult.lcm v
end
puts result

# 232792560
