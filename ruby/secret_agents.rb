# Encrypt every letter by changing each character into the next one in the alphabet
# Assign a string variable
# Index the string
# Apply .next to each indexed character

# Define a method to encrypt a string
# .next every character in the string
# print the new string

# index the word and then apply .next to every indexed character


def encrypt (string1)
	index = 0
	while index < string1.length
		string1[index] = string1[index].next
		index += 1
	end
	puts string1
end

encrypt ("password")

