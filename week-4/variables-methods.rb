puts "what's your first name?"
first_name = gets.chomp
puts "what's your middle name?"
middle_name = gets.chomp
puts "what's your last name?"
last_name = gets.chomp
puts 'Hello,' + ' ' + first_name + ' ' + middle_name + ' ' + last_name + '!'
puts "greetings to you ms/mr #{first_name} #{middle_name} #{last_name}!"


puts "what's your favorite number?"
fav_num = gets.chomp
fav_num = fav_num .to_i + 1
puts ' hmm that is ok but here is a better and bigger number:' + ' ' + fav_num .to_s