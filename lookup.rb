def pick_random_word
    require 'csv' 
    words = CSV.read('words.csv')
    # @word_and_def = words.sample 
    @word_and_def = words[0]
end 
