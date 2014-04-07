# Longest Collatz sequence

chain = [0, 1]

n = 2
while n < 1000000
  count = 0
  _n = n
  while _n >= chain.length
    if _n & 1 == 0
      _n /= 2
    else
      _n = 3 * _n + 1
    end
    count += 1
  end
  chain.push count + chain[_n]
  n += 1
end

puts chain.index(chain.max)

# 837799
