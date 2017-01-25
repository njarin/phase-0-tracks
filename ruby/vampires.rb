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
	garlic_bread = true 
else garlic_bread = false 
end


# Ask if they want health insurance
puts "We have a great healthcare plan. Should we sign you up for health insurance? (yes/no)"
insurance = gets.chomp
until insurance.downcase == "yes" or insurance.downcase == "no"
	puts "I'm sorry, give me a yes or no, please."
	insurance = gets.chomp
end

# Convert insurance into boolean
if insurance.downcase == "yes"
	insurance = true
else insurance = false
end

# Does age match birth year?
age_math = (age - (2017 - birth_year))
if age_math == 0
	age_math = true
else age_math = false
end

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
vamp_identity = "Results are inconclusive on whether #{name} is a vampire."
if age_math && (garlic_bread || insurance)
	vamp_identity = "#{name} is probably not a vampire"
end

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

if (age_math == false) && ((garlic_bread == false) || (insurance == false))
	vamp_identity = "#{name} is probably a vampire."
end

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

if (age_math == false) && (garlic_bread == false) && (insurance == false)
	vamp_identity = "#{name} is almost certainly a vampire."
end

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”

if (name == "Drake Cula") || (name == "Tu Fang")
	vamp_identity = "#{name} is definitely a vampire."
end

puts vamp_identity
