# Counting Sundays

require 'date'

date = Date.new(1901, 1, 1)
last = Date.new(2000, 12, 31)
count = 0
while date <= last
  count += 1 if date.sunday?
  date = date.next_month
end

puts count

# 171
