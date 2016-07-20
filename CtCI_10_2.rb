# 10.2 Group Anagrams



   
   
   
#Questions to ask
  
  

#Brute force approach


  
#Other approaches
  #merge
  
  def sort_anagrams(string_array)
   ana_hash={}
  for i in 0..string_array.length-1  #O(cn)
   signature=get_signature(string_array[i])
   ana_hash[signature]=string_array
  end
  
  grouped_anagrams=[]
  
  ana_hash.each do |keys,values| # O(n)
   values.each do |anagram|
    grouped_anagrams<< anagram
    end 
  end 
  
  grouped_anagrams
 
  
  
  end



  def get_signature(string) #O(c) where c is the avergage length of a string
   
   alphabet_hash=AlphabetHash.new()
   
   
   for i in 0..string.length-1
    alphabet_hash[string[i]]+=1
   end
     signature=""
    alphabet_hash.each do |key, value|
     signature<<key.to_s
     signature<<value.to_s
    end

  signature
 end     
  
  
  
 




#O Notes
  #Time O(cn)  c is the average length of the strings and n is the number of strings
  #space 
  
  