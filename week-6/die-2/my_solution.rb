# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# Pseudocode

# Input: an array of strings
# Output: length of array, one random sample from array
# Steps: create Die class,
         #initialize labels,
         # raise ArgumentError if empty array,
         # define sides method, define roll method

# Initial Solution

class Die
  def initialize(labels)
   @labels = labels
   raise ArgumentError.new("Empty array") if @labels.empty?
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

die = Die.new(["A", "B", "C", "D", "E", "F"])
die.sides
die.roll

# Refactored Solution


# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

#    In the previous die class, I provided the value of the @sides but in this exercise the sides takes the length of the 
# labels and it randomly select a sample from the list of lables provided and print it when roll is called.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# classes help to make modifiable code because they force us to break the problem into methods in which we can write 
# or read from easily

# What new methods did you learn when working on this challenge, if any?

# I learned about sample from this exercise, which is very useful!

# What concepts about classes were you able to solidify in this challenge?

# I learned that when I create a new method with the intention of chaining it with another, 
# I should write the name of my next method immediately before the end.


