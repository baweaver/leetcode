# Given a string, find the length of the longest substring without repeating characters.
# For example, the longest substring without repeating letters for "abcabcbb" is "abc",
# which the length is 3. For "bbbbb" the longest substring is "b", with the length of 1.
#
# Src: https://oj.leetcode.com/problems/longest-substring-without-repeating-characters/

def longest_unique_substring(str)
  # Internal recursion, should probably turn on TO for Ruby
  lus = -> str, chars { str.include?(chars.first) ? str : lus.call(str + chars.first, chars[1..-1]) }
  
  lus.call('', str.chars)
end

# Test cases
describe '#longest_unique_substring' do
  context 'When given the string "bbbbb"' do
    it 'returns "b"' do
      expect(longest_unique_substring('bbbbb')).to eq('b')
    end
  end
  
  context 'When given the string "abcabc"' do
    it 'returns "abc" do
      expect(longest_unique_substring('abcabc')).to eq('abc')
    end
  end
end
