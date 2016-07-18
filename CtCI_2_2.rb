# Check Kth last element 2.2
   # 
   
   
#Questions to ask
  # do we know the lenght of the list?
   

#Brute force approach
  # iterate throught the list and find the length
  #iterated again and find (length-kth element) 
  
   
   
#Other approaches
  #have two runners, one k steps behind the other. When the first reaches the end, the second will be at the kth
 
 
 def kth(linked_list, k)
 # we are defining kth last as the kth element from the end, where the last element has k=1. 
   forward_node=linked_list.head
   
   counter=1
   while(forward_node.next!=null)
     if counter=k 
       trailing_node=linked_list.head
     end
      
      forward_node=forward_node.next
      if trailing_node
       trailing_node=trailing_node.next
      end
   end
   return trailing_node
end
 
 




#O Notes
  #Time O(n)  where n is size of linked list
  #space O(1) 
  