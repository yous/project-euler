# Reciprocal cycles

require 'prime'

max = [-1, 0]
Prime.lazy.reject {|v| v == 2 or v == 5 }.take_while {|v| v < 1000 }.each do |prime|
  orig_r = Rational(1, prime)
  big_r = orig_r * 10
  cycle = 1
  loop do
    diff_r = big_r - orig_r
    if diff_r.denominator == 1 or diff_r.denominator.prime_division.map(&:first) == [2, 5]
      if max[0] < cycle
        max[0] = cycle
        max[1] = prime
      end
      break
    end
    big_r *= 10
    cycle += 1
  end
end

puts max[1]

# 983
