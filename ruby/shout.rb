# 6.4 MODULES

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily
  	"Woooooooooooo!!!"
  end
end

Shout.yell_angrily("Dang")
Shout.yelling_happily