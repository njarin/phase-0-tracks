# PAIRING 5.6 

#Practicing Data Structures!

def search_array(input_array, x)
	while input_array.length > 0
  		if input_array.last == x
  			puts ((input_array.length) -1)
  		end
  		input_array.delete(input_array.last)
  	end
end


# array = [7, 23, 56, 19]

# search_array(array, 19)

# Fibonacci Sequence 

def fib(add_me)
	starter_array = [0, 1]
	add_me = add_me - 2
	add_me.times {starter_array << (starter_array[-1] + starter_array[-2])}
end

# fib(100)


# BUBBLE SORT IN ASCENDING VALUE

# Start with the first two items in the list
# Is one item greater than the other one? 
# Move the greater item to the right of the other one.
# If items are equal, move to next pair of items
# Continue through array until all items are either equal to 
# or less than the item to their right
# You may have to got through the array multiple times

def bubble_sort(array)
	n = array.length
	loop do
		swapped = false
		(n-1).times do |item|
			if array[item] > array[item + 1]
				array[item], array[item +1] = array[item + 1], array[item]
			swapped = true
			end
		end
		break if swapped == false
	end
	p array
end

# trial_array = [5, 4, 88, 55, 99, 100, 3, 1, 44, 56, 87, 1, 2, 3, 4, 5, 6]

# bubble_sort(trial_array)

