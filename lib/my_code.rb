# Your Code Here
def map(array)
  new_array = []
  array.each do |element|
    new_array.push(yield(element))
  end
  new_array
end

def reduce(array, starting_point=0)
  result = starting_point
  array.each do |element|
    if element == true
      result = true
    end
    result = yield(result, element)
  end
  result
end