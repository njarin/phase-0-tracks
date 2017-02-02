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


# Use .map

oscar_winners.map do |year, film|
	puts film.upcase
	film.upcase
end

p oscar_winners

# ////////////////////////////////////////////////////
# Release 2: Use the Documentation


#ARRAY/HASH - Method delete any items that meet a certain con. 

number_counter = [
	10,
	20,
	30,
	40,
	50
]
p number_counter
	number_counter.delete_if {|x| x < 25 }
p number_counter

#ARRAY/HASH - Method after satisfying certain condition

number_counter2 = [

	2,
	4,
	6,
	8,
	10
]

p number_counter2

number_counter2.keep_if {|x| x > 9}

p number_counter2

#ARRAY/HASH - Method that filters data for only a specific condition

film_winners = {
	"2016" => "Spotlight",
	"2015" => "Birdman",
	"2014" => "12 Years a Slave",
	"2013" => "Argo",
	"2012" => "The Artist"
}

p film_winners

film_winners.keep_if {|year, title| year > "2013" }

p film_winners


#ARRAY/HASH - Remove items until condition is false and stops 


 number_counter3 = [
	2,
	4,
	6,
	8,
	10,
	12,
	14,
	16,
	18
]

p number_counter3

number_counter3.delete_if {|counter| counter < 3 } 

p number_counter3