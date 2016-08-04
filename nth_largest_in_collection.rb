13, 12, 9, 4 K
 extract max from heap
 13 put this is some or discard - N
 7, 12, 9, 4 - heapify
 max again 12
 11, 9, 7, 4

# t=kp  t elements in total

 # go through all p elements in the k arrays, and will put into a max heap, then I will remove n mins to get the nth largest element.

  def nth_largest(collection)
    last=collection.length-1
    max_heap=MaxHeap.new()
    while(last>=0)
     current_array=collection[last]
     last_in_each=current_array.length-1
     while(last_in_each>=0)
       max_heap.add(current_array[last_in_each])
       last_in_each=-1
     end
     last-=1
   end

  for i in 0..n
  result=max_heap.get_max
  end

  result

  end

 # O(kp)*O(log kp) + O(n)
   #O(kp)*O(log kp)