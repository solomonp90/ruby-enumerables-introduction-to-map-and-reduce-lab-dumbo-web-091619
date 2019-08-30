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

  def reduce_to_total(array)
   array.all? { |e|e+e  }
  end
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
