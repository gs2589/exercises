#CtCI 4.3  

def lists(head)
 
  lists=[]
  n=1
  lists[0]=LinkedList.new(head)
  lists[1]=LinkedList.new()
  head.visited=true
  list[0].enqueue(head)

 #put head node into linked list 
 current_list=lists[0]
 next_list=lists[1]
 
 while (!current_list.isEmpty()?)st
  r=current_list.dequeue
  r.adjacent.each do |child|
      if !child.visited 
          next_list.enqueue(child)
          child.visited=true
      end
  end 
   if current_list.isEmpty? && !next_list.isEmpty() 
    current_list=next_list
    next_list=LinkedList.new()
    n+=1
    lists[n]=next_list  
  end
 end 
 lists.pop
 return lists 
end  
        