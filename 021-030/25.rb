# 1000-digit Fibonacci number

fib = Enumerator.new do |yielder|
  index = 1
  a = 1
  b = 0
  yielder.yield a, index
  loop do
    index += 1
    a, b = a + b, a
    yielder.yield a, index
  end
end

puts fib.lazy.select {|v| v[0].to_s.length == 1000 }.first[1]

# 4782
