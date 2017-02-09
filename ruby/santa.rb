# 6.3 Attributes

class Santa
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
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

genders = [
	"female", 
	"male", 
	"none", 
	"trans", 
	"fluid",  
	"N/A",
	"nonconforming"
]

ethnicities = [
	"Ethiopian", 
	"white", 
	"German", 
	"American", 
	"South Asian", 
	"Filipino", 
	"N/A",
	"Polish",
	"Chinese",
	"Turkish",
	"Nigerian",
	"Salvadorian"
]

# Create a lot of santas!
# Need to assign a random gender and ethnicity to each one

# Pseudocode

# Code to generate many instances of Santa class
# input: gender parameter, ethnicity parameter
# steps:
	# Create Santa class
	# Create arrays for gender and ethnicity parameters
	# Create a new instance of Santa class with random gender and ethnicity
	# Do this many times
# output: instances of Santa class



10000.times {
	santas << Santa.new(genders.sample, ethnicities.sample)
}

# test the code 

p santas[9999]

p santas[0].age
santas[0].celebrate_birthday
p santas[0].age

santas[0].get_mad_at("Rudolph")
p santas[0].reindeer_ranking

p santas[1].gender
santas[1].gender = "N/A"
p santas[1].gender 
p santas[3].ethnicity


