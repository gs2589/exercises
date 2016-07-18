#CtCI 4.2

class Node
   @data=null
   @left=null
   @right=null
   
   def initialize(data=null, left=null, right=null)
      @data=data
      @left=left
      @right=right
   end 
    
    
   def minimal_tree(array)
   
    if array.length>0
   
     mid_point=array.length/(2.0).ceil-1
     new_node=Node.new(array[mid_point],minimal_tree(array[0...mid_point]), minimal_tree(array[mid_point+1...array.length]))
    else
    
     return null 
    end
   end
end

