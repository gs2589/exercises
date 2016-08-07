def my_function(movie_lengths, flight_length)
    difference_hash={}
    
    for i in 0...movie_lengths
        return true if  (difference_hash[movie_lengths[i]])
        difference_hash{flight_length-movie_lengths[i]}=i if flight_length-movie_lengths[i]>0
    end
    
    
end


#note that I only need one pass of the array. Not two, by doing lazy load.s