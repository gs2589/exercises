# CtCI_3_6.rb
class Shelter

 @queue= LinkedList.new()



    def enqueue(animal)
     @queue.add(animal)
    end

    def dequeueAny()
     @queue.pollFirst()
    end 
    
    def dequeueDog()
      current=@queue.getHead()
       i=0
      while(node.next!=null)
         if current.animal.class==Dog
           break
         end
         current=current.next
         i=i+1
         if current.next== null return "no dogs available"
      end
            
      @queue.remove(i) 
   end
   

   def dequeueCat()
      current=@queue.getHead()
       i=0
      while(node.next!=null)
         if current.animal.class==cat
           break
         end
         current=current.next
         i=i+1
         if current.next== null return "no cats available"
      end
            
      @queue.remove(i) 
   end
 
 
end