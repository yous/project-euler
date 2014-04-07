# Non-abundant sums

require 'prime'

class Fixnum
  def factors
    primes, powers = self.prime_division.transpose
    exponents = powers.map {|i| (0..i).to_a }
    exponents.shift.product(*exponents).map do |_powers|
      primes.zip(_powers).map {|prime, power| prime ** power }.inject(:*)
    end
  end

  def abundant?
    self.factors.reduce(:+) > self * 2
  end
end

abundants = (12 .. 28124 - 12).select(&:abundant?)
sums = []
abundants.each_with_index do |x, i|
  abundants[i..-1].each do |y|
    sums << x + y
  end
end
sums.uniq!
p (1..28123).reduce(:+) - sums.select {|v| v <= 28123 }.reduce(:+)

# 4179871
