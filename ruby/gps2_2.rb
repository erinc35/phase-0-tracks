#square_it function
#input: some number (we'll call it number)
#steps: multiply number by itself (this is the definition of a square)
#output: a different number ( the result of the calculuation)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # set default quantity
  # list[:carrots] = 3
  # print the list to the console [can you use one of your other methods here?]
  #p list
# output: [what data type goes here, array or hash?]
#hash


def create_list(items)
  $list = {}
  items.split(" ").each do |item|
    $list[item] = 3
  end
  p $list
end

p create_list("apple banana milk")

$list
# Method to add an item to a list

# input: some item(hash)
# steps: add a key to the hash
# list[:item_name] = quantity
# output: item added to the hash

def add(hash, item, qty)
  hash[item] = qty

end

add($list,"lemonade", 2)
add($list,"tomatoes", 3)
add($list,"onions", 1)
add($list,"ice cream", 4)

p $list


# Method to remove an item from the list
# input: deleting a key from the hash
# steps:delete the key(item)
# output: item(key) deleted

def remove(hash, item)
  hash.delete(item)
end

remove($list, "lemonade")

p $list

# Method to update the quantity of an item
# input: key and a value
# steps: assign a new value to the key
# output: updated key

def update(hash, item, qty)
  hash[item] = qty
end

update($list, "ice cream", 1)

p $list

# Method to print a list and make it look pretty
# input: hash (list)
# steps: use map or each to change the look of the hash
# output: display of the hash(items and quantities)

def display(hash)
  hash.map do |k,v|
    puts "#{k}: #{v}"
  end
end

display($list)


#Release 5
#- Pseudocode helped me to construct my code. It is helpful go back and check what we have
#in our pseudocode when we write our code.
#- We needed to split the string of the long list to make convert them to an array of
#strings so we could map or each them to make them hash.
#- Last declared print or return value
#- String, array, Hash
#- It took us a while to find out how to make our hash global($). But everything is
#clear now. 
