# 6.3 Attributes

class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 

	def about
		p @gender
		p @ethnicity
		p @age
		p @reindeer_ranking
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

end

# St_Nick = Santa.new("male", "Filipino American")
# St_Nick.speak
# St_Nick.eat_milk_and_cookies("molasses cookie")

santas = []

genders = ["female", "male", "none", "trans", "fluid", "bakla"]
ethnicities = ["Ethiopian", "white", "German", "American", "South Asian", "Filipino"]

genders.length.times { |i|
	santas << Santa.new(genders[i], ethnicities[i])
}

