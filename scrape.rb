def get_origin
  @page = Nokogiri::HTML(open("https://www.merriam-webster.com/dictionary/" + @word))
  puts @page.title 
  # puts @page_definition.xpath('//*[@id="entry-1"]/div/div/span/div/span').text
  # puts "---ETYMOLOGY---"
  # puts @page_definition.xpath('//*[@id="left-content"]/main/article/div[3]/div[2]/div/div/div/em').text

end
