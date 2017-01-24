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
puts "Listen to the hamster. On a scale of 1-10, how loud is it?"
until loudness=Integer(gets.chomp) rescue false
	if loudness 
 	   p loudness 
	else puts "I'm sorry, give me a number on a scale of 1-10"
	end
end

# What fur color? 

# Is this a good candidate for adoption?

# Estimated age of hamster

# define nil