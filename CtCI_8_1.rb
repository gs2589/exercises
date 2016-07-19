def paths(n,i=0,product=1)
  
  return product if i==n
 
    
  if i < n-2
   product=product*3
   paths(n, i+1, product)
   paths(n, i+2, product)
   paths(n, i+3, product)
   
  elsif i==n-2
   product=product*2
   paths(n, i+1, product)
   paths(n, i+2, product)

  elsif i==n-1
   product=product*1
   paths(n, i+1, product)
  end
   
   
end


# expected result 3^n

def paths(n, i=0, product=1)
  return product if i==n

  if i<n-2 
   paths(n, i+1, product*3) + paths(n, i+2, product*3) + paths(n, i+1, product*3)
  elsif i==n-2
   paths(n, i+1, product*2) + paths(n, i+2, product*2)
  elsif i==n-1
   paths(n, i+1, product*1)
  end
 
end 

#solution
def paths(n)
  return 0 if n<=0

  return 1 if n==1
  return 2 if n==2
  return 4 if n==3
  
  paths(n-1) + paths(n-2) + paths(n-3)

end


#memoized solution

def paths(n, storage={})
  return 0 if n<=0

  return 1 if n==1
  return 2 if n==2
  return 4 if n==3
  

   storage[n-1]=paths(n-1) unless storage[n-1]
   storage[n-2]=paths(n-2) unless storage[n-2]
   storage[n-3]=paths(n-3) unless storage[n-3]
  
   storage[n-1]+storage[n-2]+storage[n-3]

end


def paths(n,i=0)
  return 1 if i==n-1
  return 2 if i==n-2
  return 4 if i==n-3

  paths(n, i+1) + paths(n, i+2) +paths(n, i+3)

end
