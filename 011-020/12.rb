# Highly divisible triangular number

def triangle_number n
	(n * (n + 1)) / 2
end

def divisors n
	result = {}
	result.default = 0
	div = 2
	while n > 1
		while n % div == 0
			result[div] += 1
			n /= div
		end
		div += 1
	end
	result
end

def triangle_divisors n
	n_div = divisors n
	n_plus_1_div = divisors(n + 1)
	n_plus_1_div.each do |key, val|
		n_div[key] += val
	end
	n_div[2] -= 1
	n_div
end

n = 5
loop do
	num_of_div = 1
	triangle_divisors(n).values.each do |val|
		num_of_div *= val + 1
	end
	if num_of_div > 500
		puts triangle_number n
		break
	end
	n += 1
end

# 76576500
