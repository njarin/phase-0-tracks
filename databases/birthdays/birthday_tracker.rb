# BIRTHDAY TRACKER

# Create a Ruby program that helps my grandparents keep track of their large family's birthdays
# Features:
	# Maintain a database of family members' birthdays
	# User can add a new family member's birthday to the database 
	# User can view birthdays in a user-friendly printout
	# Optional: could be a piece of a larger project that includes a database that groups
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
# output: printed message

require 'sqlite3'

family_birthdays = SQLite3::Database.new("birthdays.db")
birthdays.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS birthdays(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    birthday VARCHAR(255)
  )
SQL


# USER INTERFACE

# On running program...
# Prompt: What would you like to do? View birthdays or add birthday?


