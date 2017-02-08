# 6.3 Attributes

class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end

end

St_Nick = Santa.new
St_Nick.speak
St_Nick.eat_milk_and_cookies("molasses cookie")