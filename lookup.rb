def pick_random_word
    require 'csv' 
    words = CSV.read('words.csv')
    @word_and_def = words.sample 
end 
