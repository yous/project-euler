squares = (3..499).map {|v| v * v }
squares.length.times.each do |idx_a|
  (idx_a + 1 ... squares.length).each do |idx_b|
    square_c = squares[idx_a] + squares[idx_b]
    c = 1000 - (idx_a + 3) - (idx_b + 3)
    if squares.include? square_c and square_c == c * c
      puts (idx_a + 3) * (idx_b + 3) * c
      exit
    end
  end
end

# 31875000
