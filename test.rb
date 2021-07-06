def map_test(array)
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

def reduce(array, starting = 0)
  if starting
    accum = starting
    i = 0
  else
    accum = array[0]
    i = 1
  end
     while i < array.length do
     accum = yield(accum, array[i])
     i += 1
     end
  accum
end

puts reduce([1,2,3,4,5]){|sum, j| sum + j }

# {|j| j*j }  = called by yield. Method gives array[i] as argument. the argument is redefined in {} as j
