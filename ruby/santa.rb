# 6.3 Attributes

class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 

	# class methods
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
		@age
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_if{|reindeer| reindeer == reindeer_name}
		@reindeer_ranking << reindeer_name
	end

end

santas = []

genders = ["female", "male", "none", "trans", "fluid", "bakla"]
ethnicities = ["Ethiopian", "white", "German", "American", "South Asian", "Filipino"]

genders.length.times { |i|
	santas << Santa.new(genders[i], ethnicities[i])
}

p santas[0].age
santas[0].celebrate_birthday
p santas[0].age

santas[0].get_mad_at("Rudolph")

p santas[1].gender
santas[1].gender = "N/A"
p santas[1].gender 
p santas[3].ethnicity



