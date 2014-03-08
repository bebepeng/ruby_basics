puts "How many bottles?"

beer = gets.chomp
if beer == ""
  puts "I need to know how many bottles to sing!"
else
  beer = Integer(beer)
end

def firstBeer(be)
  if be == 1
    "1 bottle"
  else
  "#{be} bottles"
  end
end

def nextBeer(b)
  if b==2
    "#{b -1} bottle"
  elsif b > 1
     b-=1
    "#{b} bottles"
  else
    "no bottles"
  end
end


if beer.is_a? Integer
  while beer > 0 do
    puts "#{firstBeer(beer)} of beer on the wall, #{firstBeer(beer)} of beer.\nTake one down and pass it around, #{nextBeer(beer)} of beer on the wall.\n"
    beer-=1
  end

  if beer == 0
    puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end