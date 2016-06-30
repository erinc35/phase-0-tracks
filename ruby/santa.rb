class Santa
	attr_reader :ethnicity, :age
	attr_accessor :ethnicity, :age

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].sample
    @age = rand(140)

  end

  def celebrate_birthday
  	@age += 1
  	puts "Our santa is #{@age} years old."
  end

  def get_mad_at(name)
  	@reindeer_ranking.push(@reindeer_ranking.delete(name))
  	p @reindeer_ranking
  end
end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#santa = Santa.new("male", "black")
#santa.celebrate_birthday
#santa.get_mad_at("Vixen")

#santa.ethnicity

100.times do |santa|
	p santa = Santa.new(example_genders.sample, example_ethnicities.sample)
end
