require "test/unit/assertions"
include Test::Unit::Assertions

def unique_in_order(iterable)
  if iterable.is_a? String
    iterable.scan(/(.)(?!\1)/).flatten
  else
    iterable.select.with_index {|val, i| i == 0 ? 'True' : iterable[i-1] != iterable[i]}
  end
end

assert_equal(unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B'])
