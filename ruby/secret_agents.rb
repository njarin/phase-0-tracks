# Encrypt every letter by changing each character into the next one in the alphabet

# Define a method to encrypt a string
# .next every character in the string
# print the new string

# index the word and then apply .next to every indexed character


def encrypt(string1)
	index = 0
	while index < string1.length
		string1[index] = string1[index].next
		if string1[index] == "z"
			p "found it"
		end
		index += 1
	end
	puts string1
end

encrypt("password")


# Decryption

# Figure out where in the alphabet a letter is located
# Subtract 1 from its index location
# Convert index location to alphabet
# Print result

def decrypt(string2)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < string2.length
		decrypt_letter = alpha[(alpha.index(string2[index]) - 1)]
		string2[index] = decrypt_letter
		index += 1
	end
	puts string2
end

decrypt("pssword")
