# Create a class for the word game

# Method for inputting the word that will be guessed
# input: string
# steps:
# 	Store the secret word 
# output: string

# Method for disguising secret word
# input: string
# steps: create a version of the word where all of the characters are replaced with asterisks
# output: string

# Method for number of guesses countdown
# input: string
# steps: 
# 	Convert input string length into an integer
# 	Take away one from the number of guess left for every new input
# 	Control for repeated guesses. These don’t count against countdown
# 	Until number is equal to 0, the game goes on
# 	If number hits 0, the game ends
# output: boolean

# Method for guessing the secret word
# input: string, string
# steps: 
# 	Take input of a string
# 	Control for same number of characters as secret word
# 	Compare guess word to secret word
# 	Return new version of secret word with letters matched filled in now
# 	If all characters match, trigger endgame
# output: string, boolean

# Method for endgame message
# input: boolean
# steps: 
# 	Check to see if the game is over
# 	If game is over… how?
# 		If game was won, display winning message
# 		If game was lost, display losing message
# output: string

