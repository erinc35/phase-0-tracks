def encrypt(str)
alf = "abcdefghijklmnopqrstuvwxyz"
i = 0
answer = []
	while i < str.length
		if str[i] == "z"
			answer.push("a")
		elsif str[i] == " "
			answer.push(" ")
		else
			char = alf.index(str[i])
			answer.push(alf[char+1])
		end
		i+=1
	end
	answer.join
end

#p encrypt("a z")

def decrypt(str)
alf = "abcdefghijklmnopqrstuvwxyz"
i = 0
answer = []
	while i < str.length
		if str[i] == " "
			answer.push(" ")
		else
			char = alf.index(str[i])
			answer.push(alf[char-1])

		end
		i+=1
	end
	answer.join
end

#p decrypt("a d")





puts "Which one do you want? encrypt or decrypt?"
answer = gets.chomp
until (answer == "encrypt") || (answer == "decrypt")
		puts "Please choose either encrypt or decrypt!"
		answer = gets.chomp
end
	if answer == "encrypt"
		puts "ok then, type ur password"
		password = gets.chomp
		puts "Your encrypted password is:"
		puts "#{encrypt(password)}"
	elsif answer == "decrypt"
		puts "ok then, type ur password"
		password = gets.chomp
		puts "Your decrypted password is:"
		puts "#{decrypt(password)}"
	else
		puts "Please choose either encrypt or decrypt!"
		answer = gets.chomp

	end
