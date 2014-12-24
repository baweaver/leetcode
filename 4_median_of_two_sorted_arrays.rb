# There are two sorted arrays A and B of size m and n respectively.
# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
#
# Src: https://oj.leetcode.com/problems/median-of-two-sorted-arrays/

# I'll have to look into optimizations for this one
def multi_array_median(*arrays)
  combined = arrays.reduce(:concat).sort
  combined[combined.length / 2]
end

describe '#multi_array_median' do
  context 'When given the arrays [1,3,5,7] and [2,4,6,8,9]' do
    it 'returns 5'
      expect(multi_array_medain([1,3,5,7],[2,4,6,8,9])).to eq(5)
    end
  end
end
