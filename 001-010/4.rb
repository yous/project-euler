# Largest palindrome product

require 'prime'

(100..999).to_a.reverse.each do |num|
  palin = "#{num}#{num.to_s.reverse}".to_i
  div = (100..999).lazy.to_a.reverse.select {|v| palin % v == 0 }.first
  if div and 100 <= palin / div and palin / div < 1000
    puts palin
    break
  end
end

# 906609
