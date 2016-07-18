#CtCl_1_4.rb


# Check Palindrome Permutation 1.4
   # check to see if a string is a permutation of a palindrome.  In other words, does the string have a permutation that is a palindrome?
   
   
#Questions to ask
   #- case sensititve?
   #  spaces?
   

#Brute force approach
   #find all the permutations of the input and check each to see if its a palindrome
#Other approaches
     # it must have an even number of each every letter, and at most one letter that is not even

 
def palin_per(string)
 hist={}
 
 for i in 0..string.length-1
  unless string[i]==" "
   hist[string[i]]||=0
   hist[string[i]]+=1
  end 
 end 

odd_appear=1
 hist.values.each do |value|
  odd_appear-=1 if (value % 2 !=0)
   return false if odd_appear <0
 end 
  return true
end 
  





#O Notes
  #Time O(n)
  