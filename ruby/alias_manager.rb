# SOLO CHALLENGE 5.5


# ALIAS CREATOR
# Swap the first and last name.
# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

agent_name = "Felicia Torres William Wallace Zazzy"

# Swap first and last name
# Turn string into array of first and last name
# Reverse array
# Add name back together into a string
agent_alias = agent_name.downcase
agent_alias = agent_alias.split(' ').reverse
agent_alias = agent_alias.join(' ')
agent_alias = agent_alias.split('')


# Change vowels in alias to the next vowel in 'aeiou'
# Change consonants to the next one
# Control for edge cases at "tuvw" and "z" in alphabet 

agent_alias.each do |vowel|
	vowel.gsub!(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
end

agent_alias.each do |consonant|
	consonant.gsub!(/[dhnt]/, consonant.next.next)
	consonant.gsub!(/[bcfgjklmpqrs]/, consonant.next)
	consonant.gsub!(/[wxyz]/, consonant.next)
	# letter.gsub!(/[z]/, 'z' => 'b')
end


# Capitalize the result like a name
agent_alias = agent_alias.join('')
agent_alias = agent_alias.split(' ').map(&:capitalize).join(' ')

# agent_alias.map! {
# 	|letter|
# 	letter.next
# 	}

p agent_alias




