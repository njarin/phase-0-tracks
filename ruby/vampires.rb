# Get a name
puts "What is your name?"
name = gets.chomp

# Get employee age
puts "How many years old are you?"
age = gets.chomp
age = age.to_i.to_s.to_i
while age == 0 or age == nil
	puts "I'm sorry, could you enter that as an integer?"
	age = gets.chomp
	age = age.to_i.to_s.to_i
end

# Get employee year of birth
puts "What year were you born?"
birth_year = gets.chomp
birth_year = birth_year.to_i.to_s.to_i
while birth_year == 0 or birth_year == nil
	puts "I'm sorry, could you enter that as an integer?"
	birth_year = gets.chomp
	birth_year = birth_year.to_i.to_s.to_i
end


# Ask if this person likes garlic bread
puts "Our cafeteria has garlic bread. Would you like to eat some right now? (yes/no)"
garlic_bread = gets.chomp
until garlic_bread.downcase == "yes" or garlic_bread.downcase == "no"
	puts "I'm sorry, give me a yes or no, please."
	garlic_bread = gets.chomp
end

# Convert yes/no into boolean
if garlic_bread.downcase == "yes"
	garlic_bread == true 
else garlic_bread == false 
end

if garlic_bread.downcase == "no"
	garlic_bread == false
end


p garlic_bread

# Ask if they want health insurance
puts "We have a great healthcare plan. Should we sign you up for health insurance? (yes/no)"
insurance = gets.chomp
until insurance.downcase == "yes" or insurance.downcase == "no"
	puts "I'm sorry, give me a yes or no, please."
	insurance = gets.chomp
end

# Convert insurance into boolean
if insurance.downcase == "yes"
	insurance == true
else insurance == false
end


# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# Does age match birth year?
age_math = (age - (2017 - birth_year))
if age_math == 0
	age_math == true
else age_math == false
end
p age_math



vamp_identity = "Results inconclusive"
#if age_math && ()
#	vamp_identity = "Probably not a vampire"