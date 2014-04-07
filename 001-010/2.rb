fib = Enumerator.new do |yielder|
  a = b = 1
  loop do
    yielder << a if a % 2 == 0
    a, b = b, a + b
  end
end
puts fib.take_while {|v| v <= 4000000 }.reduce(:+)

# 4613732
