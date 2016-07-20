 10.3 Search in Rotated Array


   
   
   
#Questions to ask
  
  

#Brute force approach

  #go through the array and find it O(n)
  # if it was sorted, binary search would yield O(log n)  
  
#Other approaches
  #merge
  
  
 def search (array, value)
   if array.length<1 return false 
   
  mid=(array.length-1)/2
  
  if array[mid]>value
    a=search(array[0...(mid), value]
      search (array[(mid+1)...array.length], value) unless a
    end 
  elsif array[mid]< value
     b= search (array[(mid+1)...array.length], value)
     search (array[(mid+1)...array.length], value) unless b
  else 
    return mid
    
 end 
  
  
  
  
 




#O Notes
  #Time O(n)
  #space 
  