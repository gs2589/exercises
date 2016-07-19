def subsets(hey)
 
  return hey[0] if hey.length==1 
  
   puts([hey[0], subsets(hey[1..(hey.length-1)])].to_s)
    

end