def map_to_negativize(array)
array.map { |e|e*-1 }
end

def map_to_no_change(array)
array
end

def map_to_double(array)
  array.map { |e|e*2  }
  end

  def map_to_square(array)
    array.map { |e|e**2  }
  end

   def reduce_to_total(array,starting_point)
  starting_point.inject {|e|e+array.size}
end

#(5..10).inject { |sum, n| sum + n }

#array.reduce(:+)

#reduce_to_total returns a running total when not given a starting point





















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
