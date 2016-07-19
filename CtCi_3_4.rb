# 3.4 Queues through stacks



   
   
   
#Questions to ask
  

#Brute force approach
     
   
   
#Other approaches
 # We need a stack to keep items in order of insertion and one to user for holding items while items are bing dequeued
 
 
class MyQueue
 
 @main_stack=Stack.new()
 @helper_stack=Stack.new()
 
 
 def queueu(item)
 @main_stack.push(item) 
 end 
 
 
 def dequeue
 
  while (!@main_stack.empty?)
   @helper_stack.push(@main_stack.pop)
  end
  
  value=@helper_stack.pop() 
  
  while (!@helper_stack.empty?)
   @main_stack.push(@helper_stack.pop)
  end
  
 
 
 
  return value
 end


#O Notes
  #Time O(1) to queue O(n) to dequeue
  #space O(n)

  # while this solution is okay, efficiency can be gained by leaving all elements in the new 
  # and only pushing them to the old stack when the an dequeue/peek is required, and the old stack
  #is empty. Because its a queue, the old stack will dispense old items, until empty, at that point it can be 
  #refilled 