# Pad an Array
# I worked on this challenge with: Mitchel Kroska
# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# What is the input? array, integer, any object
# What is the output? (i.e. What should the code return?) an array
# What are the steps needed to solve the problem?

  # Method can have up to three arguments, the first is the array to pad, 2nd is the
  # amount you want to pad with and the third is the content you want to pad into the array

  # See if argument length is larger then Array length, if not just return Array
  # Do however many times differance between array.length and argument length and push the 3rd argument
  # into array and if 3rd argument is not given push nil
  # return Array


# 1. Initial/ Refactord Solution

def pad!(array, min_size, value = nil)# destructive
  array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
  padded_array = Array.new(array)
  padded_array.fill(value, array.length...min_size)
  return padded_array
end
array = [1,2,3]
p pad(array, 5, 'a')
p array

# 4. Reflection

# • Were you successful in breaking the problem down into small steps?

#   Yes we were able to break it down in to small steps

# • Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

#   we were able to translate it successfully but we had difficulties to figure out how to differentiate between destructive and non-destructive and that one took us more time than the actual translating.

# • Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

#   we have got failure when we run the test. its because of we created an array to hold the elements of the padded array and we set it to equal to the array itself but once we changed it to padded_array = Array.new (array) it passed the test.

# • When you refactored, did you find any existing methods in Ruby to clean up your code?

#   yes we used .fill method to change the initial solution which were a little longer.

# • How readable is your solution? Did you and your pair choose descriptive variable names?

#   we agreed that the code is readable and when we were working on the initial solution, we defined a descriptive variable name but then we refactored it and changed it.

# • What is the difference between destructive and non-destructive methods in your own words?

#   when a method is destructive, it changes the initial value provided permanently after making some change but if the method is non-destructive, however change we make on the initial value finally it returns back the initial value we begun with.