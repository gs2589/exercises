def histogram(book, word)
  frequencies=Hash.new(0)

  for i in 0...book.length
   frequencies[book[i]]+=1
  end

  return frequencies[word]

end 

# consider the following (prural words, lower case vs upper case)
# the algorith would be be broken in two. One to creat the dictionary
# another to look up you don't want to create the dictionary everytime 
#you do a lookup