require 'csv' 
words = CSV.read('words.csv')
@random_word = words.sample 


