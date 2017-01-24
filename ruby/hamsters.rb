# Hamster questionaire

# What is hamster's name?
# Determine if hamster wearing nametag, if not, name hamster yourself

puts "Is hamster wearing a nametag? (Yes/No)"
nametag = gets.chomp
if nametag == "yes"
	puts "What name is on the nametag?"
	name = gets.chomp
else puts "Name the hamster"
	name = gets.chomp
end

# How loud is hamster?
	# Give it on a scale of 1-10
	# If not an integer, ask for an integer
puts "Listen to the hamster. On a scale of 1-10, how loud is it?"
loudness = gets.chomp
# VERIFY INPUT IS A NUMBER 1-10
until loudness.to_i == 1 or loudness.to_i == 2 or loudness.to_i == 3 or loudness.to_i == 4 or loudness.to_i == 5 or loudness.to_i == 6 or loudness.to_i == 7 or loudness.to_i == 8 or loudness.to_i == 9 or loudness.to_i == 10
	puts puts "I'm sorry, give me a number on a scale of 1-10"
	loudness = gets.chomp
end

# What fur color? 
puts "Is the fur color black, white, brown, orange, or mixed?"
fur_color = gets.chomp
until fur_color == "black" or fur_color == "white" or fur_color == "brown" or fur_color == "orange" or fur_color == "mixed" 
	puts "I'm sorry, give me one of the colors I listed as options"	
	fur_color = gets.chomp	
end



# Is this a good candidate for adoption?

# Estimated age of hamster

# define nil