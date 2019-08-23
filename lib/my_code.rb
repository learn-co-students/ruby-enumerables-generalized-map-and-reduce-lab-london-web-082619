# Your Code Here
def map_to_negativize(source_array)
  source_array.map{|n| n*(-1)}
end

def map_to_no_change(source_array)
  source_array.map{|n| n*1}
end

def map_to_double(source_array)
  source_array.map{|n| n*2}
end

def map_to_square(source_array)
  source_array.map{|n| n**2} 
end

def reduce_to_total(source_array, starting_point)
  source_array.reduce(0) {|accumulator, i|, accumulator + i}
end

def reduce_to_all_true(source_array)
  source_array.reduce(:&)
end

def reduce_to_any_true(source_array)
  source_array.reduce(:|)
end

source_array = [1, 2, 3, -9]
starting_point = 100
