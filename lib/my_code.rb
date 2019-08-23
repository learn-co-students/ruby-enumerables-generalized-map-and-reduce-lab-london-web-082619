
#def map_1(array)
#new_array = array.map{|n| n * -1}
#new_array
#end
#array = [1,2,3,-9]
#new_array = array.map{|n| n * -1}
#new_array

def map(array)
  new_map = []
  i = 0
  while i < array.length
    new_map.push(yield(array[i]))
    i += 1
  end
  new_map
end



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
