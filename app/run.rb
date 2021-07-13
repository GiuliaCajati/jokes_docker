require_relative 'joke_generator.rb'
require 'optparse'

# setting the environment to require a LOCATION (environment variable)
location = ENV.fetch('LOCATION', nil)
raise 'location required' if location.nil?

# parse the command line to accept args 
parser = OptionParser.new

parser.on('-t', '--type=programming') do |type|
    make_joke = JokeGenerator.new
    make_joke.new_jokes(location, type)
end 

parser.parse!