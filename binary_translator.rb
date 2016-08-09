# 110 = 6
# binary_str_to_num(s) -> number represented by 's', or nil if 's' is not a well-formed binary string
# ex. "110" -> 6, "1101" -> 9, "1234" -> nil, "0110" -> 6

 # if the string contains anything other than 1 and 0 return nil
 # leading zero is also not well formed; just kidding, it is
 # 
 
 
  def binary_str_to_num(s, base)
    # 2^ the distance between the left most 1 charchter and the end of the string.
    # + 2^ next number's distance from end  for all the numbers in the string
    
    #  SUM (2^(length-(i+1)) ) when string[i]=1
    
    #   0 1 10 11 100
    #   0 1 2  3  4
     unless s.class==String return nil
     return nil if s.length==0
     
     s.each_char do |char|
      for i in 0...base
       return nil if char!=i.to_s 
      end 
        return nil
      end
     end 
    
    integer=0
    i=0
    while (i<s.length)
      if s[i]=="1"
        integer=integer + base^(s.length-(i+1))
      end
      i+=1
    end
    
    return integer
 end
  
  
  s="101"  -> 5
  
   4 + 1 = 5
   
    
  