# 3.5 Sort Stack



   
   
   
#Questions to ask
  

#Brute force approach
     #take out items from primary stack one by one, put it in the secondary stack in sorter order. Do do so check each subsequent transfer, if its smaller than secondary.peek(), pop the secondary onto the primary until the 'current' transfer is the largest on the secondary stack, then transfer the secondary stack back to the first 
   
   
#Other approaches
 
def sort_stack(stack1)
 return false if stack1.pop()==false
 stack_helper= Stack.new
 stack_helper.push(stack1.pop)
 
 while(!stack1.empty?)
  current=stack1.pop
   while(current<stack_helper.peek() && !stack_helper.empty? )
     stack1.push(stack_helper.pop)
   end
   stack_helper.push(current)
 end  
   
 while(!stack_helper.empty?)
  stack1.push(stack_helper.pop())
end  
   
   
 
 
return stack1
 
end


#O Notes
  #Time O(n^2)
  #space O(n)