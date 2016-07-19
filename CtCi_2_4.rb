# 2.4 Partition



   
   
   
#Questions to ask
  

#Brute force approach/#Other approaches
  #go throught the list, take all items less than X, put them in a new list, then take all items equalt to or greater than x and add them to the end of that list.  O(2n)
  
  # iterate through the list, hold position of last number <x seen. When new item <x is seen, replace the current last <x with this and recoonect the list. Conitue 
  
  # find the last node, iterate through the list and move every node > x after the last node.   
   
   

 
 def partition(linked_l, x)
   return false if linked_l.head=null
   current_node=linked_l.head
   smaller=LinkedList.new().head
   larger=LinkedList.new().head
   smaller_current=smaller
   larger_current=larger

   while(current_node.next!=null)
    if current_node.data>=x
      larger.next=Node.new(current_node.data)
      larger_current=larger.next
    else
      smaller.next=Node.new(current_node.data)
      smaller_current=smaller.next
  end

  smaller_current.next=larger
      
end




#O Notes
  #Time 
  #space 
  
  
  