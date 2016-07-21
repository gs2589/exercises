#  Implementation of a Hash

class Hash 

 @values=[]
 
 
 
 def hash(key)
  #returns an integer in 0..@values.length
 end
 
 def []=(key,value)
  if values[hash(key)]
    #add method of linked_list invoked
    values[hash(key)].add([key,value])
  else
    values[hash(key)]=LinkedList.new([key,value])
  
 end
 
 def [](key)
  return null if values[hash(key)]==null
  return values[hash(key)].find(key)[1] 
 end
 
 
 
 
 




end 

