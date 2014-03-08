#gets a number and put's into an array separated by chars
puts "Type a number to turn to roman numerals"
num = gets.chomp
sepNum = num.split(//)

length = sepNum.length
#       1    5    10   50  100  500  1000
sym = ["I", "V", "X", "L", "C", "D", "M"]

rom= 0
#def romanNum(num, rom)
    if num == "2"
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
#end




