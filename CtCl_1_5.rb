# Check String Edits 1.5
   # check to see if two strings differ from each other by one of (replace, insert, remove)
   
   
#Questions to ask
   #- case sensititve?
   #  spaces?
   # 
   

#Brute force approach
   #  abs(string1.length - string2.length) <=1
   # if abs(string1.length - string2.length) > 0, shorter string charachters must be subset of longer string charachters
   # if string.length=string2.length, only one charachter can be different
   
   
#Other approaches
     # it must have an even number of each every letter, and at most one letter that is not even
# Not tested
 
def string_edit(string1, string2)

return true of string1==string2
return false if (string1.length=string2.length).abs>1
   if  string1.length<string2.length
     short_string=string1
     long_string=string2
   else 
    short_string=string2 
    long_string=string1
   end
  long_string_hash={}
   
   long_string.each_char do |char|
    long_string_hash[char]||=0
    long_string_hash[char]+1
   end
   
  if short_string.length<long_string.length 
   short_string.each_char do |char|
    return false if !!long_string_hash[char]
    long_string_hash[char]-=1
    return false if long_string_hash[char]<0
   end
   return true
  end  
   diff_letts=0
  short_string.each_char do |char|
    diff_letts+=1 if !!long_string_hash[char]
    return false if diff_letts>1
   end
   return true
    
    
   end

      
  
 
 
 
 
 
 
 
end





#O Notes
  #Time O(n)
  