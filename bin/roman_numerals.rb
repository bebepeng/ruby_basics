#gets a number and put's into an array separated by chars
puts "Type a number to turn to roman numerals"
number = gets.chomp
sepNum = number.split(//)

length = sepNum.length

def rom_char
  #0    1    2    3   4    5    6
  #1    5    10   50  100  500  1000
  ["I", "V", "X", "L", "C", "D", "M"]
end


def roman_num(num, rom)
    if num =="1"
      print "#{rom_char[rom]}"
    elsif num == "2"
      2.times{print "#{rom_char[rom]}"}
    elsif num == "3"
      3.times{print "#{rom_char[rom]}"}
    elsif num == "4"
      print "#{rom_char[rom]}#{rom_char[rom+1]}"
    elsif num == "5"
      print "#{rom_char[rom+1]}"
    elsif num == "6"
      print "#{rom_char[rom+1]}#{rom_char[rom]}"
    elsif num == "7"
      print "#{rom_char[rom+1]}#{rom_char[rom]}#{rom_char[rom]}"
    elsif num == "8"
      print "#{rom_char[rom+1]}#{rom_char[rom]}#{rom_char[rom]}#{rom_char[rom]}"
    elsif num == "9"
      print "#{rom_char[rom]}#{rom_char[rom+2]}"
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
  roman_num(sepNum[x],y)
  y-=2
end


