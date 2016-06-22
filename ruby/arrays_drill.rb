def release2_1(a,b,c)
	p [a,b,c]
end

release2_1("apple" , 23, true)

def release2_2(arr, item)
	arr << item
end
release2_2(["a", "b", "c", 1, 2], 3)

pair = []
p pair

pair.push("apple", 35, "plum", false, "orange")
p pair
pair.delete_at(2)
p pair
pair.insert(2, "home")
p pair
pair.shift
p pair
puts pair.include?("orange")
pair2 = ["pen" , 12]
new_pair = pair + pair2
p new_pair
