 product_arr=Array.new(array.length, 1)
    for i in 0..array.length-1
        for j in 0..array.length-1
            unless j==i
                product_arr[j]=product_arr[j]*array[i]
            end
        end
    end



    def  get_products_of_all_ints_except_at_index(array)
    prod1=1
    prod2=1
    
    results=Array.new(array.length,1)
    
    for i in 1..array.length-1
        results[i]=results[i-1]*array[i-1]
    end
    
    i=array.length-2
    
    product2=1
    while(i>=0)
        product2=product2*array[i+1]
        results[i]=results[i]*product2
        i-=1
    end 
    
    
    # write the body of your function here
    return "products are: #{results}"
end

# run your function through some test cases here
# remember: debugging is half the battle!
puts  get_products_of_all_ints_except_at_index([1, 7, 3, 4])
