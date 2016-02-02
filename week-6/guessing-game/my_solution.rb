# Build a simple guessing game

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: two Integer numbers, one for my_guess and one for answer
# Output: returns values as high, correct or low and also it tells us whether the guess is true or false.
# Steps: create a class called guessing game. In the class
#        define a method to initialize instance variables to hold
#        the answer value and to check whether the guess is true or
#        false.
#        define a method to check IF my guess is greater, lower or
#        equal to the answer and returns the write answer if greater
#        high, lower->low and equal->correct
#        define another method to print out whether our guess return
#        true or false

# Initial Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
   @check = false
  end

  def guess(my_guess)
    if my_guess > @answer
      @check = false
      return :high
    elsif my_guess == @answer
      @check = true
      return :correct
    else
      @check = false
      return :low
    end
  end

  def solved?
    @check
  end
end


game = GuessingGame.new(10)

p game.solved?   # => false

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false

p game.guess(10) # => :correct
p game.solved?   # => true


# Refactored Solution

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

#   having a class defined lets us to group behaviours(methods) into convienient bundles so that we can quickely create many objects that behave essentially the same way.We can use classes to represent any collection of things-- trees, animals, cars, and so on. Just consider what characteristics and behaviors the objects share. The instance variables will be the object's attributes while the methods represent the object's behavior.

# When should you use instance variables? What do they do for you?

#   We use instance variable when we want them to pass messages across the class methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# the use of flow control in this exercise was not challenging. it is easy to say do this if this condition is true if not continue to check untill the end. what challenging for me was that i tried to change my code to a ternary operator and i was confused how i apply ternary operaters when i have three situations to proof.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# when we assign a variable ruby implicitely changes them to symbols so by using symbol we simplify the process. also symbols are only stored in memory one time while strings stored in a memory each  time so we are also saving memory by using symbols.