# Zahlensender will (eventually) be a Twitter bot that posts random strings
# of numbers to Twitter at random intervals, just like a real Numbers Station
# would do.
# Eventually, this bot will aim to encode real tweets from real accounts to
# post in code. The idea is mostly to teach myself the Twitter API, Ruby program
# deployment and oAuth.

# Zahlensender will generate a Tweet's worth of numbers in 5-character sets
# All preceded by the string "ACHTUNG ACHTUNG" and followed by "ENDE ENDE" in a
# tribute to the Polish-run "Swedish Rhapsody" Numbers Station. More info here:
# http://priyom.org/number-stations/german/g02

# Uses the Ruby Twitter gem - sends tweets using:
# client.update("Tweet text here")

# Generate the tweet payload
def create_array
    @payload = 60.times.map{ Random.rand(9) }
end


# Send tweet (in test, print to console)
# client.update("")
create_array
puts "ACHTUNG ACHTUNG\n#{@payload[0..4].join(" ")}\n#{@payload[5..9].join(" ")}
#{@payload[10..14].join(" ")}\n#{@payload[15..19].join(" ")}\nENDE ENDE"