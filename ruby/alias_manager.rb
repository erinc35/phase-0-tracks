def mixer(name)
vowels = ["a", "e", "i", "o", "u"]
consonants= ["b", "c", "d", "f", "g", "h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
new_name = name.split(" ").rotate
swapped_name = new_name.join(" ")
letters = swapped_name.downcase.split("")

	letters.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "z"
			letter = "b"
		elsif letter == "u"
			letter = "a"
		elsif vowels.include?(letter) || consonants.include?(letter)
			if vowels.include?(letter)
				letter = vowels[vowels.index(letter) +1]
			else
				letter = consonants[consonants.index(letter) +1]
			end
		else
			puts "Please type a valid character."
		end
	end
	arr = letters.join("")
	arr.split(" ").map! {|word|	word.capitalize}.join(" ")

end

puts "Please type a name so we can create a fake name"
answer = gets.chomp
answer_arr = []
fake_arr = []
loop do
	if answer == "quit"
		break
	else
		p mixer(answer)
		answer_arr << answer
		fake_arr << mixer(answer)
	end
	puts "More names?"
	answer = gets.chomp
end

i = 0
while i < fake_arr.length
	puts fake_arr[i] + " is actually " + answer_arr[i] + "."
	i+=1
end
