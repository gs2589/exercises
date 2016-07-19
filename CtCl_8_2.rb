#CtCI_8.2

# r rows  #c columns

# 8.2 Triple Step



   
   
   
#Questions to ask
  

#Brute force approach
  
#Other approaches


def path(c,r, matrix_map)
 
 

end


def navigate(c,r,matrix_map, cc=0, cr=0, moves=[])
  return true if cc==c && cr==r
  
  return if [cc,cr].banned? #out of bounds or blocked
  
  if navigate(c,r,matric_map,cc+1,cr, moves)
    moves<<[cc,cr]
  elsif navigate((c,r,matric_map,cc,cr-1, moves)
    moves<<[cc,cr]
  else return false
end


#O Notes
  #Time O(n^2)
  #space O(n)
  