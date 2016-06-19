number_of_employees = 0
puts "How many employees?"
answer = gets.chomp

until number_of_employees == answer.to_i


	puts "What is your name?"
	name = gets.chomp

	puts "How old are you? What year were you born?"
	age = gets.chomp
	year = gets.chomp
	if age.to_i == 2016 - year.to_i
		age = true
	else
		age = false
	end

	puts "Want garlic bread?"
	garlicbread = gets.chomp

	puts "Want to enroll in health insurance?"
	insurance = gets.chomp

	puts "Any allergies?"
	allergy = gets.chomp
	until allergy == "done" || allergy == "sunshine"
		puts "any more allergy?"
		allergy = gets.chomp
		if allergy == "sunshine"
			puts "Probably a vampireee"
			break
		end
	end

	if (age == true) && ((garlicbread == "yes") || (insurance == "yes"))
		puts "Probably not a vampire"
	elsif (age == false) && ((garlicbread == "no") || (insurance == "no"))
		puts "Probably a vampire"
	elsif (age = false) && (garlicbread == "no") && (insurance == "no")
		puts "Almost certainly a vampire"
	elsif (name == "Drake Cula") || (name == "Tu Fang")
		puts "Definitely a vampire."
	else
		puts "We need more clue"
	end
	number_of_employees += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
