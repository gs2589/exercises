# Check String Edits 1.6
   # 
   
   
#Questions to ask
  
   

#Brute force approach
  
   
   
#Other approaches
     # it must have an even number of each every letter, and at most one letter that is not even

 
def string_compress(string)
  original=string
 i=0
 while(i<string.length)
   j=i
  while (string[i]==string[j])
   j+=1
  end
  string[i..j-1]="#{string[i]}#{(j-i)}"
  i+=2
 end
   return original if string.length>original.length 
   return string
  
end



#O Notes
  #Time O(n)
  #space O(n)
  