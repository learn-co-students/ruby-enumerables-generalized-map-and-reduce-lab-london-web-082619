
def map(source_array)
  new = []
    i = 0
    while i < source_array.length do
      new.push(yield(source_array[i]))
      i += 1
    end
    return new
end

def reduce(source_array, starting_point = 0)
  running_total = starting_point
  i = 0
  while i < source_array.length do
    running_total = yield(source_array[i], running_total)
    i += 1
  end
  if running_total == nil
      return false
  else
    return running_total
  end
end
