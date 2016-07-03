#module Shout
#  def self.yell_angrily(words)
#      words + "!!!" + " :("
#  end

#  def yelling_happily
#    "Yeaaaaah!"
#  end
#end

module Shout
  def shout(words)
    puts "Lets go " + words + " !"
  end
end

class Fans
  include Shout
end

class Moms
  include Shout
end

fans = Fans.new
fans.shout("Warriors")

moms = Moms.new
moms.shout("my dear")
