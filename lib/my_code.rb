def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do 
    new << yield(source_array[i])
    i += 1 
  end 
return new
end 


    
def reduce(source_array, starting_point=0)
  sum_total = starting_point
  i = 0 
  while i < source_array.length do 
    if source_array[i] == true
      return true
    end
    sum_total = yield(sum_total, source_array[i])
    i += 1 
  end
  return sum_total
end