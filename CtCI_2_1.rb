# Check String Edits 1.6
   # 
   
   
#Questions to ask
  
   

#Brute force approach
  #go through the list,keeping a hash of occurred items, if they occurred, remove them.
  
   
   
#Other approaches
     # Could use two runners, in which case, no hash is needed, but there is a nested iteratin which 
     # increases O(N) to O(N^2) 
 
 def dups(linked_list)
   return "list is empty" if linked_list.head==null
   current_node= linked_list.head
   occurred={}
   occurred[current_node.data]=true
   
   while(current_node.next!=null)
     if occurred[current_node.next.data]
      current_node.next=current_node.next.next
     end
  end  
    
end

 
 




#O Notes
  #Time O(n)  where n is size of linked list
  #space O(c) where c is the number of unique values in the list