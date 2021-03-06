# SOLO CHALLENGE 5.5


# ALIAS CREATOR
# Swap the first and last name.
# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

# Swap first and last name
# Turn string into array of first and last name
# Reverse array
# Add name back together into a string
def alias_generator(agent_name)
	agent_alias = agent_name.downcase
	agent_alias = agent_alias.split(' ').reverse
	agent_alias = agent_alias.join(' ')
	agent_alias = agent_alias.split('')

	# Change vowels in alias to the next vowel in 'aeiou'
	# Change consonants to the next one
	# Control for edge cases at "stuvw" and "z" in alphabet 

	agent_alias.map! do |vowel|
		vowel.gsub(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
	end

	agent_alias.each do |consonant|
		consonant.gsub!(/[dhnt]/, consonant.next.next)
		consonant.gsub!(/[bcfgjklmpqrswxy]/, consonant.next)
		consonant.gsub!(/[z]/, 'z' => 'b')
	end

	# Capitalize the result like a name
	agent_alias = agent_alias.join('')
	agent_alias = agent_alias.split(' ').map(&:capitalize).join(' ')
end

#USER INTERFACE
name_storage = {}

loop do
	puts "Please enter name of agent or enter 'quit' to exit"
	agent_name = gets.chomp
	break if agent_name == 'quit'
	generated_alias = alias_generator(agent_name)
	name_storage.store(agent_name, generated_alias)
	puts generated_alias
end

puts
name_storage.each {|real, fake| puts "#{fake} is really #{real}."}






