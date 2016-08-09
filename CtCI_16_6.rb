#Problem: given two arrays of numbers, find the pair of values that yield the smallest non-negative difference

#Questions to Ask 
  #is the array sorted
  #can the arrays contain the same number? ie difference ==0
  


#Brute Force Approach
   # go through each element of array_1, calculating the difference with each element of array_2 return the min difference
   
#better approach  
  #sort them and then do a greedy type traversal
  
  
     def min_diff(array_1, array_2)
      array_1.sort!
      array_2.sort!
    
      longest=[array_1.length, array_2.length].max
      min_diff=nil
      i=0
      j=0
      while(array_1[i] && array_2[j])
      difference=array_1[i]-array_2[j]
       if difference<0
        i+=1
       elsif difference>0
        j+=1
       else 
        return difference
      end
      min_diff = difference.abs if ( !min_diff ||difference.abs < min_diff)    
     end
     return min_diff
    end
  
  
  #O analysis
  
  O(AlogA + BlogB)