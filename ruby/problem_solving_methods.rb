# PAIRING 5.6 

#Practicing Data Structures!

def search_array(input_array, x)
  input_array.each {
  |number| if number == x
    p x.index
  end
    #if input_array[-1] == x
    #   p input_array[-1]
    # else p "It's not there."
    # end
  }
end




#   loop do 
#     p input_array.delete(input_array.last)
#   break if input_array.last == x
#     (input_array.length) - 1
#   end
# end

array = [7, 23, 56, 19]

p search_array(array, 7)