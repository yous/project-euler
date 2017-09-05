# Coin sums

def sums_recurse(sum, coins, used)
  if sum.zero?
    return used.empty? ? [] : [used]
  end
  return [] if coins.empty?
  results = []
  coins = coins.sort.reverse
  while sum < coins.first
    coins.shift
    return [] if coins.empty?
  end

  results += sums_recurse(sum, coins[1..-1], used.dup)
  while sum >= coins.first
    sum -= coins.first
    used << coins.first
    results += sums_recurse(sum, coins[1..-1], used.dup)
  end
  results
end

def sums(sum, coins)
  sums_recurse(sum, coins, [])
end

p sums(200, [200, 100, 50, 20, 10, 5, 2, 1]).size

# 73682
