def hanoi(starting_set)

move(starting_set)


end 



def move(source, helper=[], destination=[], num, set)
  puts("This is the source #{source.to_s}")
  puts("this is num #{num}")
 return [source, helper, destination] if (num<=0)
 
 
  #move all items in the destination stack to the helper stack using source as the helper
  
  move(source, destination, helper, num-1, set)
  destination.push(source.pop)
  puts("This is the current state of the set: #{set.to_s}")
  move(helper,source, destination, num-1, set)
 
 
 
end

