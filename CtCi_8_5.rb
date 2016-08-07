#this is right
def multiply (num1, num2, prod=0)
 return 0 if (num1==0||num2==0)
 
 prod=prod + num2
 
 return prod if num1==1
 
 multiply(num1-1, num2, prod)
 

 end
  