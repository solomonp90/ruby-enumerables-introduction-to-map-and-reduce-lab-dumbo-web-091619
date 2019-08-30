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
   array.all? { |e|  }
  end
# map { |obj| block } → array click to toggle source
# map → an_enumerator
# Returns a new array with the results of running block once for every element in enum.
#
# If no block is given, an enumerator is returned instead.
#
# (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
