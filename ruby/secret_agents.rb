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
	answer.join
end

#p encrypt("abz")



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

#p decrypt("acd")

#decrypt(encrypt("swordfish"))
#the answer is "swordfish" again because decyrpting the encrypted
#swordfish is like undoing the encryption. First, it advances each letter,
#then it retards each of them so it goes back to original. 



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
