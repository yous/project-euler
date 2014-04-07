# Number spiral diagonals

def spiral size
  return 0 if size % 2 == 0
  return 1 if size == 1
  return 4 * size * size - (size - 1) * 6
end

p (1..1001).step(2).map {|v| spiral v }.reduce(:+)

# 669171001
