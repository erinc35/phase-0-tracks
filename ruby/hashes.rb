client = {}

puts "What is the client name?"
client[:name] = gets.chomp
puts "What is the age of the client?"
client[:age] = gets.chomp.to_i
puts "How many children does client have?"
client[:number_of_children] = gets.chomp.to_i
puts"What decor theme they want?"
client[:decor_theme] = gets.chomp

puts client

loop do
puts "Any changes you would like to make?"
answer = gets.chomp
	if answer == "none"
		puts client
		break
	elsif answer == "name"
		puts "What is the name supposed to be?"
		new_name = gets.chomp
		client[:name] = new_name
		break
	elsif answer == "age"
		puts "What is the age supposed to be?"
		new_age = gets.chomp
		client[:age] = new_age
		break
	elsif answer == "number_of_children"
		puts "What is the number of children supposed to be?"
		new_number_of_children = gets.chomp
		client[:number_of_children] = new_number_of_children
		break
	elsif answer == "decor_theme"
		puts "What is the decor theme supposed to be?"
		new_decor_theme = gets.chomp
		client[:decor_theme] = new_decor_theme
		break
	else
		puts " Please type a valid answer."
	end
end
puts client
