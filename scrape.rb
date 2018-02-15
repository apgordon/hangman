def get_word
  @page_word = Nokogiri::HTML(open("https://randomword.com//"))
  @word = @page_word.css('div#random_word')[0].text
  @definition = @page_word.css('div#random_word_definition')[0].text
  @word_letters = @word.split('')
end

def set_up_game
  @guesses = 12
  @guessed_letters = []
  @correct_letters = []
end

def get_definition
  @page_definition = Nokogiri::HTML(open("https://www.merriam-webster.com/dictionary/" + @word))
  puts "---DEFINITION---"
  puts @page_definition.xpath('//*[@id="entry-1"]/div/div/span/div/span').text
  puts "---ETYMOLOGY---"
  puts @page_definition.xpath('//*[@id="left-content"]/main/article/div[3]/div[2]/div/div/div/em').text

end
