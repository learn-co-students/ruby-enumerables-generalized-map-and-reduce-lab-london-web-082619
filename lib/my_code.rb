#my own map
def map (array)
  i = 0
  new_array = []
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

#my own reduce
def reduce (source_array, starting_point = nil)
  if starting_point
    total = starting_point
    i = 0
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length do
    total = yield(total, source_array[i])
    i += 1
  end
  total
end
    