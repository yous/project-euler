# Amicable numbers

def divisors n
  result = Hash.new(0)
  while n % 2 == 0
    n /= 2
    result[2] += 1
  end

  div = 3
  until n == 1
    while n % div == 0
      n /= div
      result[div] += 1
    end
    div += 2
  end
  result
end

sums = [0, 0]
(2...10000).each do |n|
  divs = divisors n
  sums << divs.map {|k, v| (k ** (v + 1) - 1) / (k - 1) }.reduce(:*) - n
end

amicables = []
sums.each_with_index do |sum, n|
  next if sum == 0
  amicables << n if sums[sum] == n and sum != n
end

puts amicables.reduce(:+)

# 31626
