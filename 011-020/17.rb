# Number letter counts

digit = [0] + %w(one two three four five six seven eight nine).map(&:length)
digit_1 = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen).map(&:length)
digit_2 = [0, 0] + %w(twenty thirty fourty fifty sixty seventy eighty ninety).map(&:length)
digit_3 = 'hundred'.length
digit_and = 'and'.length
digit_4 = 'thousand'.length

sum = 0
(1..999).each do |n|
  if (n / 10) % 10 == 1
    sum += digit_1[n % 10]
  else
    sum += digit_2[(n / 10) % 10]
    sum += digit[n % 10]
  end
end
(100..999).each do |n|
  sum += digit[n / 100]
  sum += digit_3
  sum += digit_and if n % 100 != 0
end
sum += digit[1] + digit_4

puts sum
