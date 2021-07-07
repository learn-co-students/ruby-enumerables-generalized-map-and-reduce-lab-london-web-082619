
 def map (array)
  new = []
  i = 0
  while i < array.length do
    new.push( yield array[i])
    i += 1
  end
  return new
 end
 
 def reduce(array, total = 0)
 i= 0
 while i< array.length do 
   total = ( yield total, array[i])
   i += 1
 end
 if total == 0 
   return true
 end
 return total
 end

