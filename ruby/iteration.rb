# Declare an array and hash and fill them with data

# Declare an array

zoo_animals = [
	"rhino", 
	"bear", 
	"elephant",
	"tortoise",
	"giraffe"
]

p zoo_animals
puts 

# Use .each and .map!

zoo_animals.each do |animal|
	puts animal.upcase
end

p zoo_animals
puts 

zoo_animals.map! do |animal|
	puts animal.upcase
	animal.upcase
end

p zoo_animals
puts


# Declare a hash

oscar_winners = {
	"2016" => "Spotlight",
	"2015" => "Birdman",
	"2014" => "12 Years a Slave",
	"2013" => "Argo",
	"2012" => "The Artist"
}

p oscar_winners

# Use .each

oscar_winners.each do |year, film|
	puts film.reverse
end

p oscar_winners
