# Encrypt every letter by changing each character into the next one in the alphabet

# Define a method to encrypt a string
# .next every character in the string
# print the new string

# index the word and then apply .next to every indexed character


def encrypt(password)
	index = 0
	while index < password.length
		for edge in 0...password.length
			if password[edge] == "z"
				password[edge] = "a"
			else 
			password[index] = password[index].next
		end
		index += 1
		end
	end
	p password
end

#encrypt("abc")
#encrypt("zed")


# Decryption

# Figure out where in the alphabet a letter is located
# Subtract 1 from its index location
# Convert index location to alphabet
# Print result

def decrypt(de_password)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < de_password.length
		decrypt_letter = alpha[(alpha.index(de_password[index]) - 1)]
		de_password[index] = decrypt_letter
		index += 1
	end
	p de_password
end

#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))

# Ask secret what they need
# Control for edge inputs
# Execute encrypt or decrypt based on input
# Print result

puts "Do you want to encrypt or decrypt your password? Choose one."
spy_needs = gets.chomp
until spy_needs == "encrypt" || spy_needs.downcase == "decrypt"
	puts "I'm sorry, tell me to 'encrypt' or 'decrypt'."
	spy_needs = gets.chomp
end

if spy_needs.downcase == "encrypt"  
	puts "What is the password?"
	password = gets.chomp
	encrypt(password)
elsif spy_needs.downcase == "decrypt"
	puts "What is the password?"
	de_password = gets.chomp
	decrypt(de_password)
end
