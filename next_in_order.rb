#  Practice Questions

#Given binary search tree, write a method that will return the next node from given node!"
 
   
   
#Questions to ask
 # Is the next node, th in-order successor?
 # Assuming, yes.  There are two cases, the right successor is in the right tree of the node, in which case it is the minimum such # value in the right tree. Or it is an ancestor, in which case it is the parent of the first ancestor that is a left child (including self). The second case can also be found by searching from the root, and finding the first element that is greater than the desired_node.
  

#Brute force approach
  #traverse and return the next node
  
#Other approaches
  # use binary search to find the required node, then use traversal to find the next node
  
  
def search_next(head, desired_node)
  
 
  
  if desired_node.right != null
    return min_node(desired_node.right)
  else
     return find_first_greater(head, desired_node)
    
  end
  
    return false #no succesor exists
  
end  
  
  
  def min_node(head)
    while(head.left!=null)
     head=head.left
    end
    return head
  end
  


  def find_first_greater(head, desired_node)
    
    return head if head.data>desired_node.data

    find_first_greater(head.right, desired_node) if head.data < desired_node.data
    find_first_greater(head.left, desired_node) if head.data > desired_node.data
    
  end
 