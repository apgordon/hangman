require "json"
require "uri"
require 'pry'
require 'httparty'
require './config'

def get_origin

  @url = "https://www.dictionaryapi.com/api/v3/references/collegiate/json/" + @word + "?key=" + #APIKEY
  @response = HTTParty.get(@url)
  @et = @response[0]["et"].to_s
  @et = @et[11..@et.length]
  puts "Etymology:"
  puts @et

end




