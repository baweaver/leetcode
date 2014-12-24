# Given an array of integers, find two numbers such that they add up to a specific target number.
#
# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.
#
# You may assume that each input would have exactly one solution.
#
# Input: numbers={2, 7, 11, 15}, target=9
# Output: index1=1, index2=2
#
# Src: https://oj.leetcode.com/problems/two-sum/

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
