# SOLO CHALLENGE 5.5


# ALIAS CREATOR
# Swap the first and last name.
# Change all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

agent_name = "Monica Torres"

# Swap first and last name
# Turn string into array of first and last name
# Reverse array
# Add name back together into a string
agent_name = agent_name.split(' ').reverse
agent_name.join(' ')

vowels = 'aeiou'
