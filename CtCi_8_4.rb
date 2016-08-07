
# this is totally wrong


def subsets(hey)
 
  return hey[0] if hey.length==1 
  
   puts([hey[0], subsets(hey[1..(hey.length-1)])].to_s)
    

end


def subset(set, subsets=[])

 if set.length==1
     return set
 end
  
  for i in 0...(set.length)
      subsets<<[set[0...i]]
      subsets<<[set[i...(set.length)]]
      subset(set[1..-1],subsets)
  end
  return subsets
end


version 2

require 'pry'
def subset(set, subsets=[])

 if set.length==1
  return set
 end
 
 for i in 0...(set.length)
 binding.pry
 puts("i="+ i.to_s)
 puts("set=" +set.to_s)
 
  subsets<< [set[i]] + subset(set[0...i]+set[i+1...-1], subsets)
  end
end