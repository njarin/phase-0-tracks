# SOLO CHALLENGE 5.5


# ALIAS CREATOR
# Swap the first and last name.
# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

agent_name = "Felicia Torres"

# Swap first and last name
# Turn string into array of first and last name
# Reverse array
# Add name back together into a string
agent_alias = agent_name.downcase
agent_alias = agent_alias.split(' ').reverse
agent_alias = agent_alias.join(' ')
agent_alias = agent_alias.split('')
p agent_name
p agent_alias
puts
# puts


# Change vowels in alias to the next vowel in 'aeiou'
# Change consonants to the next one
agent_alias.map! {
	|letter|
	letter.next
	}

# Control for consonants that turned into vowels and force them to skip that vowel. 
agent_alias = agent_alias.join
agent_alias.gsub!(/[aeiou]/, 'a' => 'b', 'e' => 'f', 'i' => 'j', 'o' => 'p', 'u' => 'v')


p agent_alias
puts

agent_alias.gsub!(/[bfjpv!]/, 'b' => 'e', 'f' => 'i', 'j' => 'o', 'p' => 'u', 'v' => 'a', '!' => ' ')

p agent_alias
puts


# Correctly capitalize the new alias
# p agent_alias.split(' ').capitalize.join(' ')


