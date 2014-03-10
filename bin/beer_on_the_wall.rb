#gets number of bottles
puts "How many bottles?"
beer = gets.chomp
beer_as_int = beer.to_i

#if empty string prints "I need to know how many bottles to sing!"
#if the input cannot be turned into a number prints "Error, No number was entered"
if beer == ""
  puts "I need to know how many bottles to sing!"
elsif beer != beer_as_int.to_s
  puts "Error, No number was entered"
else
    beer = beer.to_i
end

#first_beer is syntax for the first beer number in the song
def first_beer(be)
  if be == 1
    "1 bottle"
  else
  "#{be} bottles"
  end
end

#next_beer is the syntax for the beer after one has been passed around
def next_beer(b)
  if b == 2
    "#{b -1} bottle"
  elsif b > 1
     b -= 1
    "#{b} bottles"
  else
    "no bottles"
  end
end

#if a number was inputted, sings the song
if beer.is_a? Integer
  while beer > 0
    puts "#{first_beer(beer)} of beer on the wall, #{first_beer(beer)} of beer.\nTake one down and pass it around, #{next_beer(beer)} of beer on the wall.\n"
    beer -= 1
  end

  if beer == 0
    puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end