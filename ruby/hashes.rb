# 5.2 HASHES RELEASE 3


# Create a hash with space for these inputs: client's name, age, 
# number of children, decor theme, and other info, such as do they have
# pets? If so, what kind and how many?

#Prompt user to fill in hash's information

# Convert any user input to the appropriate data type

# Print the hash out to the screen when the designer has answered all questions



design_profile = {
	client_name: "",
	client_age: 0,
	num_children: 0,
	decor_theme: "",
	pets: false,
	num_pets: 0,
	type_pets: ""
}

puts "Client name:"
name = gets.chomp
design_profile[:client_name] = name

puts "Client age:"
age = gets.chomp
while age.to_i.to_s != age
	puts "Please enter an integer"
	age = gets.chomp
end
design_profile[:client_age] = age.to_i

puts "Number of resident kids client has:"
kids = gets.chomp
while kids.to_i.to_s != kids
	puts "Please enter an integer"
	kids = gets.chomp
end
design_profile[:num_children] = kids.to_i

puts "Decor theme:"
theme = gets.chomp
design_profile[:decor_theme] = theme

puts "Does client have pets? (Yes/No)"
pets_present = gets.chomp
until pets_present.downcase == "yes" || pets_present.downcase == "no"
	puts "Please enter 'yes' or 'no'"
	pets_present = gets.chomp
end

if pets_present.downcase == "yes"
	pets_present = true
else
	pets_present = false
end
design_profile[:pets] = pets_present

#If pets, how many and what type?
if pets_present == true
	puts "Number of pets:"
	pet_number = gets.chomp
	while pet_number.to_i.to_s != pet_number
		puts "Please enter an integer"
		pet_number = gets.chomp
	end
	design_profile[:num_pets] = pet_number
	
	puts "Species of pet(s):"
	pet_species = gets.chomp
	design_profile[:type_pets] = pet_species
end

puts design_profile
puts


# Ask if user wants to update any of the inputs. If they do, let them change it. 
# Give a way to select which value user would like to change by letting them 
# select a key to change the value of

puts "Would you like to make any changes? (Yes/No)"
changes = gets.chomp
until changes.downcase == "yes" || changes.downcase == "no"
	puts "Please answer 'yes' or 'no'"
	changes = gets.chomp
end

if changes.downcase == "yes"
	puts "What category would you like to change?"
	cat_change = gets.chomp
	puts "What would you like to change #{cat_change} to?"
	edited_response = gets.chomp
	design_profile[cat_change.to_sym] = edited_response
end

#Instructions said not to spend time on control flow for the "edit" portion

puts design_profile
