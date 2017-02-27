# BIRTHDAY TRACKER

# Create a Ruby program that helps my grandparents keep track of their large family's birthdays
# Features:
	# Maintain a database of family members' birthdays
	# User can add a new family member's birthday to the database 
	# User can view birthdays in a user-friendly printout
	# Optional: User can update birthdates in case they made a mistake during input
	# Optional (really ambitious): could be a piece of a larger project that includes a database that groups
		# family members together in a similar way to a family tree (junction table?)

# PSEUDOCODE 

# Create a family birthday database with some initial values
# input:
# steps:
	# require sqlite3
	# create a database
		# should have integer primary key, name, and birthday columns
	# store the database in a variable
	# add some initial hard-coded inputs to the database
		# could use the oldest family members' birthdays 
# output: database with some data in it

# Method for adding a new family member to birthday tracking database
# input: database, values (name and birthday)
# steps: 
	# declare an empty command variable
	# fill variable with a string that would work as a sql command
	# 	command should add name and birthday to a new row
	# pass that string into the SQL database via the variable 
# output: database with another row added (no print)

# Method for printing birthdays in a user-friendly way
# input: database
# steps: 
	# pass a line of code into the SQL that will select only names and birthdays and print them
# output: printed message (so it would be a nil return in rspec)

# Method for updating birthday
# input: database, string(person's name) string(corrected birthday)
# steps: 
	# pass a line of code into the SQL that will update info 
# output: database (with edited info)

# Method for checking to see if a name is in the database
# input: database, string
# steps:

# output: boolean

require 'sqlite3'

family_birthdays = SQLite3::Database.new("birthdays.db")
family_birthdays.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS birthdays(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    birthday VARCHAR(255)
  )
SQL

family_birthdays.execute(create_table_cmd)

def add_family_member(database, new_name, birthdate)
	new_member = <<-SQL
		INSERT INTO birthdays (name, birthday) VALUES (?, ?)
	SQL
	database.execute(new_member, [new_name, birthdate])
end

# initial family members added to database (already ran these so I commented them out)
# add_family_member(family_birthdays, "Eugene", "January 1, 1936")
# add_family_member(family_birthdays, "MaryAnna", "February 18, 1928")
# add_family_member(family_birthdays, "Anne", "September 23, 1954")
# add_family_member(family_birthdays, "Tom", "October 2, 1955")

def print_bdays(database)
	friendly_print = <<-SQL
		SELECT birthdays.name, birthdays.birthday FROM birthdays
	SQL
	family_bdays = database.execute(friendly_print)
	family_bdays.each do |family_member|
		puts "#{family_member["name"]} -- #{family_member["birthday"]}"
	end
end

def update_bday(database, family_member_name, updated_bday)
	fix_bday = <<-SQL
		UPDATE birthdays SET birthday=? WHERE name=?
	SQL
	database.execute(fix_bday, [updated_bday, family_member_name])
end

def is_name(database, family_member_name)
	database.results_as_hash = false
	name_cmd = <<-SQL
		SELECT name FROM birthdays;
	SQL
	name_list = database.execute(name_cmd)
	name_list.flatten!
	name_exist = name_list.include?(family_member_name)
	database.results_as_hash = true
	name_exist
end

def view_update_prompt(database)
	puts "Would you like to view the updated list? (yes/no)"
	view_update = gets.chomp
	until view_update.downcase == 'yes' || view_update.downcase == 'no'
		puts "Please enter 'yes' or 'no'."
		view_update = gets.chomp
	end
	if view_update == 'yes'
		print_bdays(database)
	else
		puts "Thanks!"
	end
end


# USER INTERFACE

puts "What would like to do? View birthdays, add a new birthday, or update a birthday? Please enter 'view', 'add', or 'update'."
user_choice = gets.chomp
until user_choice.downcase == 'view' || user_choice.downcase == 'add' || user_choice.downcase == 'update'
	puts "Please enter 'view', 'add', or 'update'."
	user_choice = gets.chomp
end

if user_choice.downcase == 'view'
	puts "Here's a list of every family member and their birthday..."
	print_bdays(family_birthdays)
end

if user_choice == 'add'
	puts "What is the family member's name?"
	new_name = gets.chomp
	puts "What is their birthday?"
	birthdate = gets.chomp
	add_family_member(family_birthdays, new_name, birthdate)
	view_update_prompt(family_birthdays)
end

if user_choice == 'update'
	puts "Which family member would you like to change the birthday for?"
	up_name = gets.chomp
	# control for names that aren't in the database's table
	until is_name(family_birthdays, up_name)
		puts "Please enter a name of a family member already in the database."
		up_name = gets.chomp
	end
	puts "What would you like to change the date to?"
	up_date = gets.chomp
	update_bday(family_birthdays, up_name, up_date)
	view_update_prompt(family_birthdays)
end

