require 'csv'

path_to_csv = '../../bin/birthday_data.csv'
if ENV['DEV']
  path_to_csv = './bin/birthday_data.csv'
end



spreadsheet = CSV.read(path_to_csv, headers:true)
place = nil

puts "Please type a name"
name = gets.chomp
spreadsheet.each do |row|
  if row["first_name"] == name || row["last_name"] == name || "#{row["first_name"]} #{row["last_name"]}" == name
    place =row
  end
end

birthday = place[2].split('/')
age = 2014 - Integer(birthday[0])

if birthday[1] == "01"
  print "January "
elsif birthday[1] == "02"
  print "February "
elsif birthday[1] == "03"
  print "March "
elsif birthday[1] == "04"
  print "April "
elsif birthday[1] == "05"
  print "May "
elsif birthday[1] == "06"
  print "June "
elsif birthday[1] == "07"
  print "July "
elsif birthday[1] == "08"
  print "August "
elsif birthday[1] == "09"
  print "September "
elsif birthday[1] == "10"
  print "October "
elsif birthday[1] == "11"
  print "November "
elsif birthday[1] == "12"
  print "December "
end

print "#{Integer(birthday[2])}, #{birthday[0]},
                                #{age} years old"

