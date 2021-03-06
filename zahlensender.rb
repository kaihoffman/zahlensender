# frozen_string_literal: true

# Zahlensender will (eventually) be a Twitter bot that posts random
# strings of numbers to Twitter at random intervals, just like a real
# Numbers Station would do. Eventually, this bot will aim to encode real
# tweets from real accounts to post in code. The idea is mostly to teach
# myself the Twitter API, Ruby program deployment and oAuth.

# Zahlensender will generate a Tweet's worth of numbers in 5-character sets
# All preceded by the string "ACHTUNG ACHTUNG" and followed by "ENDE ENDE" in a
# tribute to the Polish-run "Swedish Rhapsody" Numbers Station. More info here:
# http://priyom.org/number-stations/german/g02

# Uses the Ruby Twitter gem - sends tweets using:
# client.update("Tweet text here")

# !/usr/bin/ruby

# Configure Twitter API client data by editing in the keys below

require 'twitter'
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'YOUR CODE HERE'
  config.consumer_secret     = 'YOUR CODE HERE'
  config.access_token        = 'YOUR CODE HERE'
  config.access_token_secret = 'YOUR CODE HERE'
end

# Generate the tweet payload
def create_array
  @payload = 60.times.map { rand(10) }
end

def print_header
  'ACHTUNG ACHTUNG'
end

def print_footer
  'ENDE ENDE'
end

def print_numbers
  index = 0
  returnstring = ''
  12.times do
    returnstring.concat(@payload[index..(index + 4)].join(' ') + "\n")
    index += 5
  end
  returnstring
end

# Send tweet (in test, print to console)
create_array
print_header
print_numbers
print_footer
client.update(print_header + "\n\n" + print_numbers + "\n" + print_footer)
