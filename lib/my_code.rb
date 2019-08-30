def map_to_negativize(array)
    array.map { |e|e*-1 }
end
# Returns a new array with the results of running block once for every element in enum.
#
# If no block is given, an enumerator is returned instead.
#
# (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
def map_to_no_change(array)
    array
end

def map_to_double(array)
    array.map { |e|e*2  }
end

def map_to_square(array)
    array.map { |e|e**2  }
end

def reduce_to_total(array,starting_point=0)
    array.reduce(:+)+starting_point
end
# Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
#
# The inject and reduce methods are aliases. There is no performance benefit to either.
#
# If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
#
# If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.
#
# # Sum some numbers
# (5..10).reduce(:+)                             #=> 45
# # Same using a block and inject
# (5..10).inject { |sum, n| sum + n }            #=> 45
# # Multiply some numbers
# (5..10).reduce(1, :*)                          #=> 151200
# # Same using a block
# (5..10).inject(1) { |product, n| product * n } #=> 151200
# # find the longest word
# longest = %w{ cat sheep bear }.inject do |memo, word|
#    memo.length > word.length ? memo : word
# end
# longest                                        #=> "sheep"
def reduce_to_all_true(array)
  array.all?
end
# Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } which will cause all? to return true when none of the collection members are false or nil.
#
# If instead a pattern is supplied, the method returns whether pattern === element for every collection member.
#
# %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
# %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
# %w[ant bear cat].all?(/t/)                        #=> false
# [1, 2i, 3.14].all?(Numeric)                       #=> true
# [nil, true, 99].all?                              #=> false
# [].all?                                           #=> true
def reduce_to_any_true(array)
  array.any?
end
# Passes each element of the collection to the given block. The method returns true if the block ever returns a value other than false or nil. If the block is not given, Ruby adds an implicit block of { |obj| obj } that will cause any? to return true if at least one of the collection members is not false or nil.
#
# If instead a pattern is supplied, the method returns whether pattern === element for any collection member.
#
# %w[ant bear cat].any? { |word| word.length >= 3 } #=> true
# %w[ant bear cat].any? { |word| word.length >= 4 } #=> true
# %w[ant bear cat].any?(/d/)                        #=> false
# [nil, true, 99].any?(Integer)                     #=> true
# [nil, true, 99].any?                              #=> true
# [].any?                                           #=> false

















  # reduce(initial, sym) → obj click to toggle source
  # reduce(sym) → obj
  # reduce(initial) { |memo, obj| block } → obj
  # reduce { |memo, obj| block } → obj
  # Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
  #
  # The inject and reduce methods are aliases. There is no performance benefit to either.
  #
  # If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
  #
  # If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.
  #
  # # Sum some numbers
  # (5..10).reduce(:+)                             #=> 45
  # # Same using a block and inject
  # (5..10).inject { |sum, n| sum + n }            #=> 45
  # # Multiply some numbers
  # (5..10).reduce(1, :*)                          #=> 151200
  # # Same using a block
  # (5..10).inject(1) { |product, n| product * n } #=> 151200
  # # find the longest word
  # longest = %w{ cat sheep bear }.inject do |memo, word|
  #    memo.length > word.length ? memo : word
  # end
  # longest                                        #=> "sheep"











# map { |obj| block } → array click to toggle source
# map → an_enumerator
# Returns a new array with the results of running block once for every element in enum.
#
# If no block is given, an enumerator is returned instead.
#
# (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]

# 1) my own reduce-like methods reduce_to_total returns a running total when not given a starting point reduces correctly
#     Failure/Error: expect(reduce_to_total(source_array)).to eq(6)
#     NoMethodError:
#       undefined method `reduce_to_total' for #<RSpec::ExampleGroups::MyOwnReduceLikeMethods::ReduceToTotalReturnsARunningTotalWhenNotGivenAStartingPo
# int:0x00000000023ea970>
#     # ./spec/map_and_reduce_spec.rb:34:in `block (3 levels) in <top (required)>'
