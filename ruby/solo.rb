class Car
  attr_reader :make, :model, :color, :transmission
  attr_accessor :make, :model, :color, :transmission

  def initialize(make, model)
    @make = make
    @model = model
  end

  def choose_color(color)
    @color = color
    puts "Hmm, a #{@color.capitalize} #{@make.capitalize} #{@model.capitalize}, sounds cool!"
  end

  def choose_transmission(transmission)
  	@transmission = transmission
  	puts "#{@transmission.capitalize} Transmission it is!"
  end

end

cars = []

puts "How many cars would you like to customize before purchasing them so you can see how they look?"
number = gets.chomp

i = 0
until i == number.to_i

	puts "Please state the make of the car you want?"
	make = gets.chomp
	puts "and model please?"
	model = gets.chomp
	cars[i] = Car.new(make,model)
	puts "which color?"
	color = gets.chomp
	cars[i].choose_color(color)
	puts "What kind of transmission?(Please choose between automatic or manual)"
	tranny = gets.chomp
	cars[i].choose_transmission(tranny)
	i += 1
end
puts "It's really hard to decide.. but you have to make a choice:"
cars.each {|car|  puts "#{car.color.capitalize} #{car.make.capitalize} #{car.model.capitalize} with #{car.transmission} transmission?"}
