# Your Code Here
def map(array)
  new = []
  counter = 0
  while counter < array.length
    new.push(yield(array[counter]))     #In Ruby, the yield keyword yields the flow of control to the code in the block.
    counter +=1                            #So, the code in the block is executed and the execution continues after the
  end                                 #line containing the yield.
  new
end

def reduce(array, sp=nil) #sp= start point
  if sp
    accumulator = sp
    counter = 0
  else
    accumulator = array[0]
    counter = 1
end
while counter < array.length
  accumulator = yield(accumulator, array[counter])
  counter += 1
end
accumulator
end#