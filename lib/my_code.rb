# Your Code Here

def map(source_array)
  new_array = []

    source_array.length.times { |index|
    new_array.push(yield(source_array[index]))
    }
    
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
    counter = 0
  else
    total = source_array[0]
    counter = 1
  end
  
  while counter < source_array.length do
    total = yield(total, source_array[counter])
    counter += 1
  end

  total
end
