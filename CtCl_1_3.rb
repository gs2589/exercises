# Check Permutation  1.3

#Questions to ask
  

#Brute force approach

#Other approaches
  
 
def URLify (string, length)
  spaces=0
 for i in 0..string.length
  puts(string.length)
  puts(length)
  if string[i]==" " && string[i+1]!=" "
   string[i]="%20"
   spaces+=1 
 
   puts ("spaces:" + spaces.to_s)
  end
 end
  puts ("final length:" + length.to_s)
 return string[0...length+(spaces*2)]

end 




#O Notes