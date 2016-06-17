puts "What is your name?"
  name = gets.chomp
puts "How old are you? What yer were you born?"
  age = gets.chomp
puts "Want garlic bread?"
  garlicbread = gets.chomp
puts "Want to enroll in health insurance?"
  insurance = gets.chomp

if (age == true) && (garlicbread == "yes")
  puts "Probably not a vampire"
end

if (age == false) && ((garlicbread == "no") || (insurance == "no"))
  puts "Probaby a vampire"
end

if (age == false) && (garlicbread == "yes") && (insurance == "no")
  puts "Almost certainly a vampire"
end

if (name == "Drake Cula") || (name == "Tu Fang")
  puts "Definitely a vampire."
end
