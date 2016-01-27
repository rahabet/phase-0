# Calculate the mode Pairing Challenge

# I worked on this challenge with: Jhon Holman

# I spent [1 hr] hours on this challenge.

# 0. Pseudocode

# What is the input?
   # An array of numbers or strings
# What is the output? (i.e. What should the code return?)
   # An array of the most frequent value(string or number)
# What are the steps needed to solve the problem?
=begin
  Defining a method that will find the mode of a dataset(Both numbers and words)
  Create empty container to hold frequencies of data points
  Sequentially step through a dataset to find frequencies of all data points
  Create empty container to hold HIGHEST frequency data points
  Check to see which data points are most frequent.
  IF they are found to be most reoccuring, add to our HIGHEST frequency container
  END IF
  Sort frequencies in ascending order
=end

# 1. Initial Solution

def mode(array)
  frequencies = Hash.new(0)
  array.each { |word| frequencies[word] += 1 }
  most_freq_word = []
  frequencies.each { |key, value|
    if value == frequencies.values.max
       most_freq_word << key
    end
    }
    most_freq_word.sort
end

# 3. Refactored Solution

def mode(array)
  mode = array.inject(Hash.new(0)) { |key,value| key[value] += 1; key}
  mode.select{|key,value| value == mode.values.max }.keys
end

# 4. Reflection

# .Which data structure did you and your pair decide to implement and why?

#   we used both. we used the hash to hold the frequencies of the elements, and the array to hold the new values.

# •Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

#   yes this time it is more clearer than last time. I think once we develop how to write it and what to expect, we will get the hang of it and it gets easier.

# • What issues/successes did you run into when translating your pseudocode to code?

#   It was translated pretty simple but then we ran into error when we test it to
#   rspec because we didn’t include sorting in our pseudocode but once we
#   added that, it ran perfectly.

# • What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

#   we used .each method to iterate through the content first but when we did refactoring, we used inject and select method which kind of make the code more readable.