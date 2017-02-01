# 5.2 HASHES RELEASE 3


# Create a hash with space for these inputs: client's name, age, 
# number of children, decor theme, and other info, such as do they have
# pets? If so, what kind and how many?

#Prompt user to fill in hash's information

# Convert any user input to the appropriate data type

#Print the hash out to the screen when the designer has answered all questions



design_profile = {
	client_name: "",
	client_age: 0,
	num_children: 0,
	decor_theme: "",
	pets: false,
	num_pets: 0,
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






#p design_profile[:client_age]
#p design_profile[:client_name]
puts design_profile