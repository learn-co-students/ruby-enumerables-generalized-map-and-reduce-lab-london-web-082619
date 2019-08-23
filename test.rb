def map(array)
  new_map = []
  i = 0
  while i < array.length
    new_map.push(yield(array[i]))
    i += 1
  end
  new_map
end

puts map_test([1,2,3,4,5]){|j| j*j }


# {|j| j*j }  = called by yield. Method gives array[i] as argument. the argument is redefined in {} as j
