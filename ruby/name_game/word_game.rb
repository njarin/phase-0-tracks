# Create a class for the word game

# Word Game: 
# User 1 inputs a secret word
# User 2 guesses words until they match all letters in the secret word
# 	Rules: 
# 		Player gets the same number of guesses as there are letters in the word
# 		If player guesses a word with some matching letters, they get to know which ones matched
# 		A repeated guess doesn't count against number of guesses left
# 		Player wins if they match all letters
# 		Player loses if they spend all guesses and their guess word isn't the secret word 

# Need to create a class with attributes for the secret word, the guess letter, the guessed letters, clue word, turns left
# 	Take secret word on initialization
# 	Display secret word with letters blanked out
# 	Need methods for guessing letters
# 		Has this letter been guessed before? 
# 		Store guess letter for checking later for doubled up guess
# 		Fill in any matching letters between secret word and guess letter
# 		Display partially filled-in or still blanked out word 
# 	Endgame:
# 		If counter hits 0, player loses
# 		If clue word == secret word, player wins


# Method for giving a secret word to guess
# input: string
# steps: 
# 	Store the secret word provided during initialization
# output: string

# Method checking if guessed letter has been guessed before
# input: string (guess letter), array (guessed letters)
# steps: 
# 	Check if guess letter is included guessed letters
# 	Return false if letter is not present yet
# 	Return true if letter has already been guessed
# output: boolean

# Method for adding new guess to previously guessed letters
# input: string, array
# steps: 
# 	Add input string as new value in array
# output: array

# Method tracking progress word
# input: string (secret word), array (guessed letter)
# steps: 
# 	Split secret word into array
# 	Keep letter if present in guessed letter array
# 	If letter doesn’t match any, turn it into an asterisk
# 	Combine letters back into a string
# output: string (progress word)

# Method for tracking number of turns left
# input: string (secret word), array (guessed letters)
# steps: 
# 	Determine length of secret word
# 	Determine number of guessed letters
# 	Subtract length of secret word from number of guessed letters
# output: integer (number of turns left)

# Method for triggering loss message
# input: integer (number of turns)
# steps: 
# 	If number of turns left = 0, display taunting losing message
# output: string (display message)

# Method for triggering win message
# input: string (secret word), string (progress word)
# steps: 
# 	Does secret word == progress word? 
# 	Display winning message if true
# output: string (congratulatory message)

class WordGame
	attr_accessor :secret_word, :guessed_letters, :game_over, :game_won, :game_lost

	def initialize(word_to_guess)
		# puts "Starting a new game..."
		@secret_word = word_to_guess
		@guessed_letters = []
		@secret_word
		@game_over = false
		@game_lost = false
		game_won = false
	end

	def repeated_letter(guess_letter)
		@guessed_letters.include?(guess_letter)
	end

	def add_guess(guess_letter)
			@guessed_letters << guess_letter
			@guessed_letters
	end

	def progress_word
		progress_word = @secret_word.split('')
		
		progress_word.map do |letter|
			if @guessed_letters.include?(letter)
				letter.upcase!
			end
		end

		progress_word.map do |letter|
			if letter != letter.upcase
				letter.clear
				letter << '*'
			end
		end

		progress_word = progress_word.join('')
		progress_word.downcase!
		if progress_word == @secret_word
			@game_over = true
			@game_won = true
		end
		progress_word
	end

	def turns_left
		original_turns = @secret_word.length
		turns_used = @guessed_letters.length
		turns_unused = original_turns - turns_used
		if turns_unused == 0
			@game_over = true
			@game_lost = true
		end
		turns_unused
	end

end

# USER INTERFACE

puts "Okay Player 1, please enter the word for Player 2 to guess."
word_to_guess = gets.chomp

until (word_to_guess == word_to_guess.split(" ").join)
	puts "I'm sorry. Enter a single word please."
	word_to_guess = gets.chomp
end

game = WordGame.new(word_to_guess)

until game.game_over == true

	puts "Okay Player 2, guess a letter"
	guess_letter = gets.chomp

	until (guess_letter.length == 1) && (game.repeated_letter(guess_letter) == false)
		puts "I'm sorry. Enter a new, single letter please."
		guess_letter = gets.chomp
	end

	game.add_guess(guess_letter)
	puts game.progress_word
	game.turns_left
end

if game.game_won == true
	puts "You won! You have the best words!"
end

if game.game_lost == true
	puts "You lose! How embarrassing..."
end





