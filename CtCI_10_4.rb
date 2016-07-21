# 10.4 Search in Rotated Array


   
   
   
#Questions to ask
  
  

#Brute force approach

  #go through the array and find it O(n)
  
#Other approaches
  # throw a 'stone' to find the first of the end of the array or a number > than the value being sought.
  # then do binary search on the array.
  
  
  def search(array, value)
    if array.elementAt(0)==null return -1 //error
    
    i=1
    
    while (array.elementAt(i)<value && array.elementAt(i)>-1)
     i=1*2
    end
    
    last=i
    
    binary_search(array, last)
    
    
 end
 
 
 def binary_search(array, last, value)
    
    mid=last/2
    
    return -1 if last=0
    
    if (value>array[mid])
     binary_search(array[mid+1...last], last/2, value)
    elsif (value>array[mid])
     binary_search(array[0...mid-1], last/2, value)
    else
      return mid
 
 
 
 end
    