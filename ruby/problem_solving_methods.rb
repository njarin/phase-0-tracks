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