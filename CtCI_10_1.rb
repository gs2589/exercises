# 10.1 Merge Sort



   
   
   
#Questions to ask
  
  

#Brute force approach


  
#Other approaches
  #merge
  


def sort_merge(a, b)
  return a if (b.length==0)
  left=a.length-b.length-1
  right=b.length
  current=a.length-1
 
  
  while(left>=0 && right>=0){
   if a[left]>b[right]
      a[current]=a[left]
      left-=1
      
   else 
      a[current]=a[right]
      right-=1
   end
     current-=1;
 end
    
  while(right>=0)
    a[current]=a[right]
    right-=1
    current-=1
  end 
end







end



#O Notes
  #Time O(n)
  #space O(1)
  
  
  