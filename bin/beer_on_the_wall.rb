puts "How many bottles?"

beer = gets.to_i

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



 while beer > 0 do
  puts "#{firstBeer(beer)} of beer on the wall, #{firstBeer(beer)} of beer.\nTake one down and pass it around, #{nextBeer(beer)} of beer on the wall.\n"
  beer-=1
 end
