=begin
What did you learn about pseudocode from working on this challenge?

  what informations to provide and what the outcome will be. it is not easy to pseudocode as i thought it is but hopefully with practice, i will be great on writing one.

What are the tradeoffs of using Arrays and Hashes for this challenge?

  Hashes seems better for this challenge since we have items and quantities to show

What does a method return?

  a method returns whatever we tell it to return. if not specified then it will return the last expressions value.

What kind of things can you pass into methods as arguments?

  we can pass an argument of any valid data type into a method.

How can you pass information between methods?

  variables. what we did was create a variable for the first method to hold the result of the method and pass it to the next method inorder to continue working.

What concepts were solidified in this challenge, and what concepts are still confusing?

  I am still confused about how we passed the arguments which I believe will get clear to me once i go through it again.
=end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create a an empty container (hash) with a type of food and its quantity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: a hash
def create_list
  Hash.new()
end
puts create_list
list1=create_list
list2=create_list

# Method to add an item to a list
# input: item name and optional quantity
# steps:Add items to the list
# output: List of items
def add_to_list(item,quantity,list)
  list[item]=quantity
end
p add_to_list("apple",2,list1)
p add_to_list("cherry",15,list1)
p add_to_list("banana",5, list1)
p list1
# Method to remove an item from the list
# input: item and list
# steps: create a method to remove an item
# output: removed item
def remove_from_list(item,list)
  list.delete(item)
end
p remove_from_list("apple",list1)
p list1

# Method to update the quantity of an item
# input: item,quantity and list
# steps: create a method to modify the quantity of an item
# output: a new quantity
def update_list (item, quantity,list)
  list[item] = quantity
end
p update_list("banana",10,list1)
p list1

# Method to print a list and make it look pretty
# input: item,quantity
# steps: create a method to print the grocery list
# output: the grocery list printed out
# def grocery_list(item)
#   # grocery_list.each do |item,quantity|
#   #  return "#{item}: #{quantity}"
#   # end
# end
def grocery_list(list)
  string=""
  list.each {|item, quantity|
  string=string + item.to_s + ":" + quantity.to_s + " "
  }
  return string
end
puts grocery_list(list1)

