# Names scores

names = File.read('names.txt').gsub(/"/, '').split(',').sort!
result = names.each_with_index.map do |name, idx|
  name.bytes.map {|v| v - 64 }.reduce(:+) * (idx + 1)
end.reduce(:+)

puts result

# 871198282
