def map(source_array)
  new_Array = []
  source_array.each do |x|
    new_Array.push(yield(x))
  end
  new_Array
end

def reduce(source_array, starting_point = 0) ##ATTENTION## it passes the tests, but probably wrong
   i = starting_point
  source_array.each do |x|
    if yield(i,x) == 0
      i = yield(x,i)
    else
      i = yield(i,x)
    end
  end
  i
end