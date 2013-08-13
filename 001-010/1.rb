puts (1...1000).select {|v| v % 3 == 0 || v % 5 == 0 }.reduce(:+)

# 233168
