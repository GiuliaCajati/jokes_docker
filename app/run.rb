require_relative 'joke_generator.rb'
require 'optparse'

make_joke = JokeGenerator.new
location = ENV.fetch('LOCATION', nil)

raise 'location required' if location.nil?
#type = general, programming
#pass env variable in run command 
#docker run --rm -it jokes 
parser = OptionParser.new

parser.on('-t', '--type=programming') do |type|
    make_joke.new_jokes(type)
end 

parser.parse!