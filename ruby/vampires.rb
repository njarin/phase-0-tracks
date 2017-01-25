# How many times do we need to fill out the questionnaire? 
puts "How many employees are you processing right now?"
employees = gets.chomp
employees = employees.to_i.to_s.to_i
while employees == 0 or employees == nil
	puts "I'm sorry, could you try that again? Enter an integer greater than 0."
	employees = gets.chomp
	employees = employees.to_i.to_s.to_i
end

def vamp_questionnaire 
# Initial vampire status
vamp_identity = "Results are inconclusive on whether this employee is a vampire."

# Get a name
puts "What is employee's name?"
name = gets.chomp

# Get employee age
puts "How many years old are they?"
age = gets.chomp
age = age.to_i.to_s.to_i
while age == 0 or age == nil
	puts "I'm sorry, could you enter that as an integer?"
	age = gets.chomp
	age = age.to_i.to_s.to_i
end

# Get employee year of birth
puts "What year were they born?"
birth_year = gets.chomp
birth_year = birth_year.to_i.to_s.to_i
while birth_year == 0 or birth_year == nil 
	puts "I'm sorry, could you enter that as an integer?"
	birth_year = gets.chomp
	birth_year = birth_year.to_i.to_s.to_i
end

# Does age match birth year?
age_math = (age - (2017 - birth_year))
if age_math == 0
	age_math = true
else age_math = false
end

# Ask if this person likes garlic bread
puts "Our cafeteria has garlic bread. Would they like to eat some right now? (yes/no)"
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
puts "We have a great healthcare plan. Should we sign them up for health insurance? (yes/no)"
insurance = gets.chomp
until insurance.downcase == "yes" or insurance.downcase == "no"
	puts "I'm sorry, give me a yes or no, please."
	insurance = gets.chomp
end

# Convert insurance into boolean
if insurance.downcase != "yes"
	insurance = false
else insurance = true
end

# Ask about allergies
puts "Please list any allergies you have. Hit return after each one. Enter 'Done' when done listing."
allergies = gets.chomp
until allergies.downcase == "done" or vamp_identity = "#{name} is probably a vampire."
	allergies = gets.chomp
	if allergies.downcase == "sunshine"
		vamp_identity = "#{name} is probably a vampire."
		puts vamp_identity
	end
end

# Override other outcomes based on sunshine allergy
if vamp_identity != "#{name} is probably a vampire."
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
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
end
puts vamp_identity
end

while employees >= 1
	vamp_questionnaire
	employees -= employees
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

