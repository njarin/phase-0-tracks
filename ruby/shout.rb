# 6.4 MODULES

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily
#   	"Woooooooooooo!!!"
#   end
# end

# Shout.yell_angrily("Dang")
# Shout.yelling_happily

module Shout
	def fire_breath
		"Yol Toor Shul!"
		"Whoa! Fire breath!"
	end

	def slow_time
		"Tiid Klo Ul!"
		"Time ... slowed ... doooooown"
	end
end

class Dohvahkiin
	include Shout
end

class Dragon
	include Shout
end

#DRIVER CODE

hero = Dohvahkiin.new
p hero.fire_breath
p hero.slow_time

dragon = Dragon.new
p dragon.fire_breath
p dragon.slow_time