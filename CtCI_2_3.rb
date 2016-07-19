#  2.3
   # 
   
   
#Questions to ask
   # is this a bidirectional list?  
   # is there some pattern in the elements of the linked list?
   # "the new" list is not really a "new" list right?

#Brute force approach
  
   
   
#Other approaches
  # Because we are not given access to the the previous nodes, there is absolutely no way to get access to the previous nodes, given that this is a singly linked list. The only solution is to copy the next node's data onto the current node and then delete the next node
  
  
  def remove_node_in_middle(node)
    node.data==node.next.data
    node.next= node.next.next
  end 
 
 
 
 




#O Notes
  #Time 
  #space 
  
  