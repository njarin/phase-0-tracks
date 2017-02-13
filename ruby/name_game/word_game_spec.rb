# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'word_game'

describe WordGame do 
	let (:wordgame) { WordGame.new("unicorn") }
	# let (:first_guess) { wordgame("n") }

	it "accepts new word to guess" do
		expect(wordgame.secret_word).to eq ("unicorn")
	end

	it "checks to see if guess is a repeat" do
		expect(wordgame.repeated_letter("n")).to eq (false)
	end

	it "stores guessed letter in array of guessed letters" do
		wordgame.add_guess("n")
		expect(wordgame.guessed_letters).to eq (["n"])
	end

	it "spits out progress word" do
		wordgame.add_guess("n")
		expect(wordgame.progress_word).to eq ("*n****n")
	end

	it "counts down turns left in game" do
		wordgame.add_guess("n")
		expect(wordgame.turns_left).to eq (6)
	end

	it "ends game in a win" do 
		wordgame.add_guess("n")
		wordgame.add_guess("u")
		wordgame.add_guess("i")
		wordgame.add_guess("c")
		wordgame.add_guess("o")
		wordgame.add_guess("r")
		wordgame.progress_word
		expect(wordgame.game_over).to eq (true)
	end

	it "end game in a loss" do
		wordgame.add_guess("n")
		wordgame.add_guess("x")
		wordgame.add_guess("t")
		wordgame.add_guess("d")
		wordgame.add_guess("o")
		wordgame.add_guess("r")
		wordgame.add_guess("y")
		wordgame.turns_left
		expect(wordgame.game_over).to eq (true)
	end

end