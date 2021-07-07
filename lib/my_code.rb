def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(array, starting_value = nil)
	if starting_value
	  new = starting_value
	  i = 0
	else
	  new = array[0]
	  i = 1
	end
	
	while i < array.length
	  new = yield(new, array[i])
	  i += 1
	end
	return new
end