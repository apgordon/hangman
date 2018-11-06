require 'nokogiri'
require 'open-uri'
require './lookup'


def set_up_game
    
  @guesses = 12
  @guessed_letters = []
  @correct_letters = []
  pick_random_word 
  @word = @word_and_def[0]
  @word_letters = @word.split('')
  @definition = @word_and_def[1]
  
end

def play_game
  
  puts "This word has #{@word.length} letters and means: #{@definition}"
  
  until @guesses == 0 || @correct_letters.count == @word.length
    puts "#{@guesses} guesses left."
    print "Guess a letter: "
    guess = gets.chomp
  
    if @guessed_letters.include?(guess)
      puts "You already guessed #{guess}. Try again."
    elsif guess.length > 1
      puts "One letter only. Try again."
    else
      @guessed_letters.push(guess)
      @guesses -= 1
        if @word_letters.include?(guess) == true
          puts "Yup!"
          @correct_letters.push(guess)
        else
          puts "Sorry, there's no #{guess}."
        end
      puts "Guessed letters: #{@guessed_letters.sort!}"
      puts "Correct letters: #{@correct_letters.sort!}"
  
      @word_letters.each do |i|
        if @correct_letters.include?(i)
          print i
        else
          print "_"
        end
      end
      print "\n\n\n"
    end
  end
  
  puts "OK, what's your guess?"
  guess = gets.chomp
  
  if guess == @word
    puts "Holy shit, you're right! It was #{@word}"
  else
    puts "Sorry, it was actually #{@word}."
  end
  
end 

