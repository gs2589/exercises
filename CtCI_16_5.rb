 def factorial_zeros(n)
   zeros=0
   #add a zero for every multiple of 5
   powers_of_five=Math.log10(n)/Math.log10(5)
    for i in 1..powers_of_five
     zeros+= n/(5**i)
   end
   return zeros
  end
   