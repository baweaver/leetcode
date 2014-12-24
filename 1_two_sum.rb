def two_sum(numbers, target)
  # Should probably look into creating a Lazy permutation for Enumerable, this could get slow
  numbers.permutation(2).find { |n| n.reduce(:+) == target }.map { |n| ary.index(n) }
end

describe '#two_sum' do
  context 'When given the numbers 2, 7, 11, and 15 with a target of 9' do
    it 'returns the indexes 0 and 1' do
      expect(two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
    end
  end
end
