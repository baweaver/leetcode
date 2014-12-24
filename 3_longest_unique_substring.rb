def longest_unique_substring(str)
  # Internal recursion, should probably turn on TO for Ruby
  lus = -> str, chars { str.include?(chars.first) ? str : lus.call(str + chars.first, chars[1..-1]) }
  
  lus.call('', str.chars)
end

# Test cases
describe '#longest_unique_substring' do
  context 'When given the string "abcabc"' do
    it 'returns "abc" do
      expect(longest_unique_substring('abcabc')).to eq('abc')
    end
  end
end
