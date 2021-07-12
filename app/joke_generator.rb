require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'colorize'
require 'pry'

class JokeGenerator

def new_jokes(type)
    url = URI("https://official-joke-api.appspot.com/jokes/#{type}/random")
    data = Net::HTTP.get_response(url)
    joke = JSON.parse(data.body) 
    format_joke(joke[0])
end 

def format_joke(joke)
    puts joke['setup'].blue
    puts '...'
    puts joke['punchline'].green
end 

end 