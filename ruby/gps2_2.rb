# PAIRING GPS 2.2

# ELECTRONIC GROCERY LIST

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # turn string into an array
  	# use the split(' ') method to do that
  # set default quantity
  	# iterate through the array to set grocery item as key, and default quantity as value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set item name to a key in the hash and the quantity to the value
	# inputting that as an array into the hash
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps: delete the key and value that corresponds to the key 
# output: hash

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: update the hash value with the new quantity
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: user interface print message with values in front keys
# output: printed, pretty list



def grocery_list(groceries)
	needed_groceries = {}
	groceries = groceries.split(' ')
	groceries.each do |item|
		needed_groceries[item] = 1
	end
	#p needed_groceries
	pretty_list(needed_groceries)
end

def grocery_adder(needed_groceries, grocery_item, quantity = 1)
	needed_groceries[grocery_item] = quantity
end

def grocery_deleter(needed_groceries, grocery_item)
	needed_groceries.delete(grocery_item)
end

def quantity_update(needed_groceries, grocery_item, new_quantity)
	needed_groceries[grocery_item] = new_quantity
end

def pretty_list(needed_groceries)
	needed_groceries.each do |item, quantity|
		puts "#{quantity} #{item}"
	end
end

# list = grocery_list("carrots potatoes chicken pasta")

# grocery_adder(list, "noodles", 4)
# grocery_adder(list, "sauce")
# p list

# grocery_deleter(list, "noodles")
# p list

# quantity_update(list, "carrots", 8)
# p list

# pretty_list(list)

list1 = grocery_list('lemonade tomatoes onions ice_cream')
quantity_update(list1, 'lemonade', 2)
quantity_update(list1, 'tomatoes', 3)
quantity_update(list1, 'ice_cream', 4)
p list1 

grocery_deleter(list1, 'lemonade')
p list1

quantity_update(list1, 'ice_cream', 1)
p list1

pretty_list(list1)

=begin 
What did you learn about pseudocode from working on this challenge?
	I should be way more explicit when pseudocoding about what I should expect my code to do. I need to be pseudocoding inputs and outputs, along with how I'll get from one to the other.

What are the tradeoffs of using arrays and hashes for this challenge?
	An array got us to a hash in this challenge. The array could handle a simple list, but not one with quantity values attached to each item in the list. Converting the array into a hash fixed that. 

What does a method return?
	A method returns whatever is implicitly returned by the code within it. For example, the grocery_list method returned a hash, but did not create one, since that wasn't returned as something that would be created outside the method. 

What kind of things can you pass into methods as arguments?
	Methods can take in all kinds of data type. It can be a data structure like a hash or array, a string, an integer, a float, or any other class. As long as the method calls on class methods that can be applied to the input data type, it works. 

How can you pass information between methods?
	Information can be passed between methods by making the returns of the methods exist outside the method. That way, it can be passed into another method as an argument. We did this with the methods that adjusted the list created by that first method. We also have one instance of calling a method inside another one. That's because the parent method returned a data type that matched the parameter of the nested method.

What concepts were solidified in this challenge, and what concepts are still confusing?
	I feel much better about pseudocoding, how to pass data from one method to another, and how to turn a method return into a varible that exists outside a method. In the past, I think I was trying to do too much within a method. This challenge made it clear how helpful it is to break things up and how pseudocoding can really help make that process clear. I understand now how to make a method return turn into a variable, but it's something that I should spend more time with so that I have a firmer grasp on when and how to do it. Also, how to add and delete things from hashes was a little hazier before than it is now. I wasn't sure if adding a new value would apply to the correct key or simply add a new one. Now I know.

=end