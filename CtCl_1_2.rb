# Check Permutation  1.2

#Questions to ask
  # Does case sensitivity matter?
  

#Brute force approach
 #Check all of the permutations of one string and check if any of them are equal to string2

#Other approaches
  #sort them, and compare
  #create a historgram of both strings

 
def permutation?(string1, string2)

 return false if string1.length != string2.length
  
  string1.down_case
  string2.down_case
  
  


end










#permutation excercises


def permutations(prefix="",string)
   puts prefix if string.length<=0
  for i in 0..(string.length-1)
   permutations(prefix+string[i],string[0...i] + string[(i+1)...string.length])
  end 
end







def permutations(string)
  return string if string.length<=1
  for i in 0..(string.length-1)
   puts ("this is the current string: #{string}")
   puts string[i]
   puts(" recursive call: #{string[i] + permutations(string[0...i] + string[(i+1)...string.length])}")
  end 
  "z"
 
end 