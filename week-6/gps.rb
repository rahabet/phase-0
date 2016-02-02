# Your Names
# 1)Bethelhem Assefa
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
# #   error_counter = 3

# #   library.each do |food|
# #     if library[food] != library[item_to_make]
# #       error_counter += -1
# #     end
# #   end

# #   if error_counter > 0
# #     raise ArgumentError.new("#{item_to_make} is not a valid input")
# #   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # raises error if item to make is not valid

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#Reflection

# What did you learn about making code readable by working on this challenge?

# It was challenging for me because i barely write my own code and refactoring someone elses code is like confusing. 
# but we manged to understand what it does and able to make it a more readable.

# Did you learn any new methods? What did you learn about them?

# I didn't learn a new method but I was able to use the one that i already learn last week.

# What did you learn about accessing data in hashes?

# by using the key or the value, we can easily access hashes and also to see whether somehting is included in the hash we 
# can simply use has_key method.

# What concepts were solidified when working through this challenge?

# I see the point why we need to write pseudocode and also comments because that way another reader easily understand what
# our thinking process is.other wise it takes more time to understand what is happenining.
