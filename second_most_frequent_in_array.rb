#  Practice Questions

#get element with second most highest occurrences from an array of object.
#example:
#someArrays = {"xx", "yy", "xx", "yy", "zz", "xx"}
#xx shown up 3 times
#yy shown up 2 times <-- this is the second most occurances
#zz shown up 1 times 
   
   
#Questions to ask
 

#Brute force approach
 #itemize how many of each item there are, put occurrences in hash. Return hash with second highest occurances.
 
  
#Other approaches
  
 def second_highest(array)
   frequency=Hash.new(0)
   for i in 0 .. array.length
      frequency[array[i]]+=1
   end 
  
  second_max_key=null
  max_key=array[0]
  frequency.each do |key, value|
    if frequency[key] > frequency[max_key]
      second_max_key=max_key
      max_key=key
    end
  end  
    

 return second_max_key




#O Notes
  #Time O(n) 
  #space 
  