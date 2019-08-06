def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do 
    new << yield(source_array[i])
    i += 1 
  end 
return new
end 


    
def reduce(source_array, starting_point=nil)
  if starting_point
  sum_total = starting_point
  i = 0 
else 
  sum_total = source_array[0]
  i = 1
end
  while i < source_array.length do 
    sum_total = yield(sum_total, source_array[i])
    i += 1 
  end
  return sum_total
end