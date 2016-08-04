def find_rotation_point(array)
    
    start=0
    trail=0
    cast=2
    while(true)
        while(array[start+cast]>array[start+trail])
            cast=cast*2
            trail=cast
        end
        break if cast-start <=2    
    start=start+trail
    trail=0
    cast=2
    end
    
    #in case the array is not rotated
    return 0 if start==0

   array[start+1]<array[start] ? start+1 : start + 2
        
end



words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'asymptote', # <-- rotates here!
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
]