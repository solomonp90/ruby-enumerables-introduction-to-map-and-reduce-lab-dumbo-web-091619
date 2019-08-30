def map_to_negative(array)
  array=[1,2,3,-9]
array.map{|i|}



end


map { |obj| block } → array click to toggle source
map → an_enumerator
Returns a new array with the results of running block once for every element in enum.

If no block is given, an enumerator is returned instead.

(1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
(1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
