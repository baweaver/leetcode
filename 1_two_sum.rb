def two_sum(numbers, target)
  numbers.permutation(2).find { |n| n.reduce(:+) == target }.map { |n| ary.index(n) }
end

two_sum ARGV.shift
