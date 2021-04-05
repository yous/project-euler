# frozen_string_literal: true

# Pandigital products

require 'set'

DIGITS = (1..9).to_a.freeze

def find_prods(lh_digits, rh_digits)
  prods = Set.new
  DIGITS.permutation(lh_digits).each do |lh_nums|
    i = lh_nums.reduce(0) { |a, e| a * 10 + e }
    (DIGITS - lh_nums).permutation(rh_digits).each do |rh_nums|
      j = rh_nums.reduce(0) { |a, e| a * 10 + e }
      remain = Set.new(DIGITS - lh_nums - rh_nums)
      prod = i * j
      next if prod.to_s.size != 9 - lh_digits - rh_digits

      prods.add(prod) if Set.new(prod.to_s.chars.map(&:to_i)) == remain
    end
  end
  prods
end

# 1-digit * 4-digits = 4-digits
# 2-digits * 3-digits = 4-digits
prods = find_prods(1, 4) + find_prods(2, 3)
p prods.sum

# 45228
