# In Unique  1.1

#Questions to ask
  # What is the size of the alphabet?
  # Does case sensitivity matter?
  

def Unique(string)

 # assumes alphabet of size 128
 return false if string.length > 128
 
  hash={}
 
 for i in 0..string.length-1
  return false if hash[string[i]] 
  hash[string[i]]=true
 end
 
  
return true

end


#O Notes
  # the above algorithm has O(n) runtime and O(1) space 
  # To do it without using other data structures, one solution would be to do nested iterations increasing O(n) to O(n^2) for time    and space would reamain at O(1)