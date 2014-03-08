puts "How many bottles?"

beer = gets.to_i

def nextBeer(b)
  if b==2
    "#{b -1} bottle"
  elsif b > 1
     b-=1
    "#{b} bottles"
  else
    "no more bottles"
  end
end



 while beer > 1 do
  puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.\nTake one down and pass it around, #{nextBeer(beer)} of beer on the wall.\n"
  beer-=1
 end
