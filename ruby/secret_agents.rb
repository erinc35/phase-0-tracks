def encrypt(str)
alf = "abcdefghijklmnopqrstuvwxyz"
i = 0
answer = []
	while i < str.length
	if str[i] == "z"
		answer.push("a")
	end
	char = alf.index(str[i])
	answer.push(alf[char+1])
	i+=1
	end
	puts answer.join
end

#encrypt("zfb")

def decrypt(str)
alf = "abcdefghijklmnopqrstuvwxyz"
i = 0
answer = []
	while i < str.length
	char = alf.index(str[i])
	answer.push(alf[char-1])
	i+=1
	end
	puts answer.join
end




#why on decrypt, no need if?
#decrypt("acd")

puts "Which one do you want? encrypt or decrypt?"
answer = gets.chomp
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
	end
