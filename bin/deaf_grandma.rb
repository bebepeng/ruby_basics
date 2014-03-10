#gets a string
puts "Speak to grandma"
speak = gets.chomp!

#calculates a random year from 1930 to 1950
year = 1930 + Random.rand(20)

#grandma cant hear if not in upcase and miss-hears if upcase
if speak!=speak.upcase
  puts "HUH?! SPEAK UP SONNY!"
elsif speak==speak.upcase
  puts "NO, NOT SINCE #{year}!"
end
