#gets a number and put's into an array separated by chars
puts "Type a number to turn to roman numerals"
number = gets.chomp
sepNum = number.split(//)

length = sepNum.length

def sym
  #0    1    2    3   4    5    6
  #1    5    10   50  100  500  1000
  ["I", "V", "X", "L", "C", "D", "M"]
end


def romanNum(num, rom)
    if num =="1"
      print "#{sym[rom]}"
    elsif num == "2"
      2.times{print "#{sym[rom]}"}
    elsif num == "3"
      3.times{print "#{sym[rom]}"}
    elsif num == "4"
      print "#{sym[rom]}#{sym[rom+1]}"
    elsif num == "5"
      print "#{sym[rom+1]}"
    elsif num == "6"
      print "#{sym[rom+1]}#{sym[rom]}"
    elsif num == "7"
      print "#{sym[rom+1]}#{sym[rom]}#{sym[rom]}"
    elsif num == "8"
      print "#{sym[rom+1]}#{sym[rom]}#{sym[rom]}#{sym[rom]}"
    elsif num == "9"
      print "#{sym[rom]}#{sym[rom+2]}"
    end
end

if length == 1
  y=0
elsif length == 2
  y=2
elsif length == 3
  y=4
elsif length == 4
  y=6
end

for x in 0...length
  romanNum(sepNum[x],y)
  y-=2
end


