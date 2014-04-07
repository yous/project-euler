# Maximum path sum I

def maximum_path_sum triangle
  (triangle.length - 1).times.each do |row|
    col_num = triangle[row + 1].length
    col_num.times.each do |col|
      if col == 0
        triangle[row + 1][col] += triangle[row][col]
      elsif col == col_num - 1
        triangle[row + 1][col] += triangle[row][col - 1]
      else
        triangle[row + 1][col] += [triangle[row][col], triangle[row][col - 1]].max
      end
    end
  end
  triangle[-1].max
end

example = [
  %w(3),
  %w(7 4),
  %w(2 4 6),
  %w(8 5 9 3)
].map {|row| row.map(&:to_i) }
triangle = [
  %w(75),
  %w(95 64),
  %w(17 47 82),
  %w(18 35 87 10),
  %w(20  4 82 47 65),
  %w(19  1 23 75  3 34),
  %w(88  2 77 73  7 63 67),
  %w(99 65  4 28  6 16 70 92),
  %w(41 41 26 56 83 40 80 70 33),
  %w(41 48 72 33 47 32 37 16 94 29),
  %w(53 71 44 65 25 43 91 52 97 51 14),
  %w(70 11 33 28 77 73 17 78 39 68 17 57),
  %w(91 71 52 38 17 14 91 43 58 50 27 29 48),
  %w(63 66  4 68 89 53 67 30 73 16 69 87 40 31),
  %w( 4 62 98 27 23  9 70 98 73 93 38 53 60  4 23)
].map {|row| row.map(&:to_i) }

puts maximum_path_sum example
puts maximum_path_sum triangle

# 1074
