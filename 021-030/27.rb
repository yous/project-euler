# Quadratic primes

require 'prime'

max = [0, 0]
Prime.lazy.take_while {|v| v < 1000 }.each do |b|
  (-999..999).lazy.select {|a| (1 + a + b).prime? }.each do |a|
    final = (2 .. 1.0/0).take_while {|n| (n ** 2 + a * n + b).prime? }.size
    if max[0] < final
      max[0] = final
      max[1] = a * b
    end
  end
end

puts max[1]

# -59231
