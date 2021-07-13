require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'colorize'
require 'pry'

class JokeGenerator

def new_jokes(location, type)
    url = URI("https://official-joke-api.appspot.com/jokes/#{type}/random")
    data = Net::HTTP.get_response(url)
    joke = JSON.parse(data.body) 
    format_joke(location, joke[0])
end 

def format_joke(location, joke)
    case location
    when 'DC'
        color = :blue
    when 'LA'
        color = :light_blue
    when 'NY'
        color = :green
    else 
        color = :red
    end
    puts joke['setup'].colorize(color)
    puts '...'
    puts joke['punchline'].colorize(color)
end 

end 