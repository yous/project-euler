# Distinct powers

require 'prime'

def distinct(a, b)
  distincts = []
  (2..a).each do |base|
    primes = []
    powers = []
    base.prime_division.each do |prime, power|
      primes << prime
      powers << power
    end

    (2..b).each do |power|
      powered = primes.zip(powers.map { |v| v * power })
      distincts << powered
    end
  end
  distincts.uniq
end

puts distinct(100, 100).size

# 9183
